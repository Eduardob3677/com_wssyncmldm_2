package L3;

import R3.AbstractC0080b;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0092n;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0091m;
import R3.C0098u;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.idm.agent.dm.IDMDmInterface;
import com.idm.core.wbxml.IDMWbxmlConstants;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0061j extends AbstractC0092n {

    /* renamed from: L, reason: collision with root package name */
    public static final C0061j f1675L;

    /* renamed from: M, reason: collision with root package name */
    public static final C0052a f1676M = new C0052a(3);

    /* renamed from: A, reason: collision with root package name */
    public int f1677A;

    /* renamed from: B, reason: collision with root package name */
    public List f1678B;

    /* renamed from: C, reason: collision with root package name */
    public int f1679C;

    /* renamed from: D, reason: collision with root package name */
    public List f1680D;
    public List E;

    /* renamed from: F, reason: collision with root package name */
    public int f1681F;

    /* renamed from: G, reason: collision with root package name */
    public X f1682G;

    /* renamed from: H, reason: collision with root package name */
    public List f1683H;

    /* renamed from: I, reason: collision with root package name */
    public e0 f1684I;

    /* renamed from: J, reason: collision with root package name */
    public byte f1685J;

    /* renamed from: K, reason: collision with root package name */
    public int f1686K;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1687d;

    /* renamed from: e, reason: collision with root package name */
    public int f1688e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1689g;

    /* renamed from: h, reason: collision with root package name */
    public int f1690h;

    /* renamed from: i, reason: collision with root package name */
    public List f1691i;

    /* renamed from: j, reason: collision with root package name */
    public List f1692j;

    /* renamed from: k, reason: collision with root package name */
    public List f1693k;

    /* renamed from: l, reason: collision with root package name */
    public int f1694l;

    /* renamed from: m, reason: collision with root package name */
    public List f1695m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public List f1696o;

    /* renamed from: p, reason: collision with root package name */
    public List f1697p;

    /* renamed from: q, reason: collision with root package name */
    public int f1698q;

    /* renamed from: r, reason: collision with root package name */
    public List f1699r;

    /* renamed from: s, reason: collision with root package name */
    public List f1700s;

    /* renamed from: t, reason: collision with root package name */
    public List f1701t;

    /* renamed from: u, reason: collision with root package name */
    public List f1702u;

    /* renamed from: v, reason: collision with root package name */
    public List f1703v;

    /* renamed from: w, reason: collision with root package name */
    public List f1704w;

    /* renamed from: x, reason: collision with root package name */
    public int f1705x;

    /* renamed from: y, reason: collision with root package name */
    public int f1706y;

    /* renamed from: z, reason: collision with root package name */
    public Q f1707z;

    static {
        C0061j c0061j = new C0061j();
        f1675L = c0061j;
        c0061j.q();
    }

    public C0061j(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1694l = -1;
        this.n = -1;
        this.f1698q = -1;
        this.f1705x = -1;
        this.f1679C = -1;
        this.f1681F = -1;
        this.f1685J = (byte) -1;
        this.f1686K = -1;
        this.f1687d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1675L;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1685J;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1688e & 2) != 2) {
            this.f1685J = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f1691i.size(); i5++) {
            if (!((W) this.f1691i.get(i5)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.f1692j.size(); i6++) {
            if (!((Q) this.f1692j.get(i6)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < this.f1696o.size(); i7++) {
            if (!((Q) this.f1696o.get(i7)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.f1699r.size(); i8++) {
            if (!((C0063l) this.f1699r.get(i8)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i9 = 0; i9 < this.f1700s.size(); i9++) {
            if (!((C0075y) this.f1700s.get(i9)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i10 = 0; i10 < this.f1701t.size(); i10++) {
            if (!((G) this.f1701t.get(i10)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f1702u.size(); i11++) {
            if (!((T) this.f1702u.get(i11)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.f1703v.size(); i12++) {
            if (!((C0070t) this.f1703v.get(i12)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        if ((this.f1688e & 16) == 16 && !this.f1707z.b()) {
            this.f1685J = (byte) 0;
            return false;
        }
        for (int i13 = 0; i13 < this.f1680D.size(); i13++) {
            if (!((Q) this.f1680D.get(i13)).b()) {
                this.f1685J = (byte) 0;
                return false;
            }
        }
        if ((this.f1688e & 64) == 64 && !this.f1682G.b()) {
            this.f1685J = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1685J = (byte) 1;
            return true;
        }
        this.f1685J = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1686K;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1688e & 1) == 1 ? B1.j.b(1, this.f) : 0;
        int iC = 0;
        for (int i6 = 0; i6 < this.f1693k.size(); i6++) {
            iC += B1.j.c(((Integer) this.f1693k.get(i6)).intValue());
        }
        int iD = iB + iC;
        if (!this.f1693k.isEmpty()) {
            iD = iD + 1 + B1.j.c(iC);
        }
        this.f1694l = iC;
        if ((this.f1688e & 2) == 2) {
            iD += B1.j.b(3, this.f1689g);
        }
        if ((this.f1688e & 4) == 4) {
            iD += B1.j.b(4, this.f1690h);
        }
        for (int i7 = 0; i7 < this.f1691i.size(); i7++) {
            iD += B1.j.d(5, (AbstractC0080b) this.f1691i.get(i7));
        }
        for (int i8 = 0; i8 < this.f1692j.size(); i8++) {
            iD += B1.j.d(6, (AbstractC0080b) this.f1692j.get(i8));
        }
        int iC2 = 0;
        for (int i9 = 0; i9 < this.f1695m.size(); i9++) {
            iC2 += B1.j.c(((Integer) this.f1695m.get(i9)).intValue());
        }
        int iD2 = iD + iC2;
        if (!this.f1695m.isEmpty()) {
            iD2 = iD2 + 1 + B1.j.c(iC2);
        }
        this.n = iC2;
        for (int i10 = 0; i10 < this.f1699r.size(); i10++) {
            iD2 += B1.j.d(8, (AbstractC0080b) this.f1699r.get(i10));
        }
        for (int i11 = 0; i11 < this.f1700s.size(); i11++) {
            iD2 += B1.j.d(9, (AbstractC0080b) this.f1700s.get(i11));
        }
        for (int i12 = 0; i12 < this.f1701t.size(); i12++) {
            iD2 += B1.j.d(10, (AbstractC0080b) this.f1701t.get(i12));
        }
        for (int i13 = 0; i13 < this.f1702u.size(); i13++) {
            iD2 += B1.j.d(11, (AbstractC0080b) this.f1702u.get(i13));
        }
        for (int i14 = 0; i14 < this.f1703v.size(); i14++) {
            iD2 += B1.j.d(13, (AbstractC0080b) this.f1703v.get(i14));
        }
        int iC3 = 0;
        for (int i15 = 0; i15 < this.f1704w.size(); i15++) {
            iC3 += B1.j.c(((Integer) this.f1704w.get(i15)).intValue());
        }
        int iD3 = iD2 + iC3;
        if (!this.f1704w.isEmpty()) {
            iD3 = iD3 + 2 + B1.j.c(iC3);
        }
        this.f1705x = iC3;
        if ((this.f1688e & 8) == 8) {
            iD3 += B1.j.b(17, this.f1706y);
        }
        if ((this.f1688e & 16) == 16) {
            iD3 += B1.j.d(18, this.f1707z);
        }
        if ((this.f1688e & 32) == 32) {
            iD3 += B1.j.b(19, this.f1677A);
        }
        for (int i16 = 0; i16 < this.f1696o.size(); i16++) {
            iD3 += B1.j.d(20, (AbstractC0080b) this.f1696o.get(i16));
        }
        int iC4 = 0;
        for (int i17 = 0; i17 < this.f1697p.size(); i17++) {
            iC4 += B1.j.c(((Integer) this.f1697p.get(i17)).intValue());
        }
        int iC5 = iD3 + iC4;
        if (!this.f1697p.isEmpty()) {
            iC5 = iC5 + 2 + B1.j.c(iC4);
        }
        this.f1698q = iC4;
        int iC6 = 0;
        for (int i18 = 0; i18 < this.f1678B.size(); i18++) {
            iC6 += B1.j.c(((Integer) this.f1678B.get(i18)).intValue());
        }
        int iD4 = iC5 + iC6;
        if (!this.f1678B.isEmpty()) {
            iD4 = iD4 + 2 + B1.j.c(iC6);
        }
        this.f1679C = iC6;
        for (int i19 = 0; i19 < this.f1680D.size(); i19++) {
            iD4 += B1.j.d(23, (AbstractC0080b) this.f1680D.get(i19));
        }
        int iC7 = 0;
        for (int i20 = 0; i20 < this.E.size(); i20++) {
            iC7 += B1.j.c(((Integer) this.E.get(i20)).intValue());
        }
        int iD5 = iD4 + iC7;
        if (!this.E.isEmpty()) {
            iD5 = iD5 + 2 + B1.j.c(iC7);
        }
        this.f1681F = iC7;
        if ((this.f1688e & 64) == 64) {
            iD5 += B1.j.d(30, this.f1682G);
        }
        int iC8 = 0;
        for (int i21 = 0; i21 < this.f1683H.size(); i21++) {
            iC8 += B1.j.c(((Integer) this.f1683H.get(i21)).intValue());
        }
        int size = (this.f1683H.size() * 2) + iD5 + iC8;
        if ((this.f1688e & 128) == 128) {
            size += B1.j.d(32, this.f1684I);
        }
        int size2 = this.f1687d.size() + j() + size;
        this.f1686K = size2;
        return size2;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0059h.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0059h c0059hH = C0059h.h();
        c0059hH.i(this);
        return c0059hH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1688e & 1) == 1) {
            jVar.n(1, this.f);
        }
        if (this.f1693k.size() > 0) {
            jVar.w(18);
            jVar.w(this.f1694l);
        }
        for (int i5 = 0; i5 < this.f1693k.size(); i5++) {
            jVar.o(((Integer) this.f1693k.get(i5)).intValue());
        }
        if ((this.f1688e & 2) == 2) {
            jVar.n(3, this.f1689g);
        }
        if ((this.f1688e & 4) == 4) {
            jVar.n(4, this.f1690h);
        }
        for (int i6 = 0; i6 < this.f1691i.size(); i6++) {
            jVar.p(5, (AbstractC0080b) this.f1691i.get(i6));
        }
        for (int i7 = 0; i7 < this.f1692j.size(); i7++) {
            jVar.p(6, (AbstractC0080b) this.f1692j.get(i7));
        }
        if (this.f1695m.size() > 0) {
            jVar.w(58);
            jVar.w(this.n);
        }
        for (int i8 = 0; i8 < this.f1695m.size(); i8++) {
            jVar.o(((Integer) this.f1695m.get(i8)).intValue());
        }
        for (int i9 = 0; i9 < this.f1699r.size(); i9++) {
            jVar.p(8, (AbstractC0080b) this.f1699r.get(i9));
        }
        for (int i10 = 0; i10 < this.f1700s.size(); i10++) {
            jVar.p(9, (AbstractC0080b) this.f1700s.get(i10));
        }
        for (int i11 = 0; i11 < this.f1701t.size(); i11++) {
            jVar.p(10, (AbstractC0080b) this.f1701t.get(i11));
        }
        for (int i12 = 0; i12 < this.f1702u.size(); i12++) {
            jVar.p(11, (AbstractC0080b) this.f1702u.get(i12));
        }
        for (int i13 = 0; i13 < this.f1703v.size(); i13++) {
            jVar.p(13, (AbstractC0080b) this.f1703v.get(i13));
        }
        if (this.f1704w.size() > 0) {
            jVar.w(130);
            jVar.w(this.f1705x);
        }
        for (int i14 = 0; i14 < this.f1704w.size(); i14++) {
            jVar.o(((Integer) this.f1704w.get(i14)).intValue());
        }
        if ((this.f1688e & 8) == 8) {
            jVar.n(17, this.f1706y);
        }
        if ((this.f1688e & 16) == 16) {
            jVar.p(18, this.f1707z);
        }
        if ((this.f1688e & 32) == 32) {
            jVar.n(19, this.f1677A);
        }
        for (int i15 = 0; i15 < this.f1696o.size(); i15++) {
            jVar.p(20, (AbstractC0080b) this.f1696o.get(i15));
        }
        if (this.f1697p.size() > 0) {
            jVar.w(170);
            jVar.w(this.f1698q);
        }
        for (int i16 = 0; i16 < this.f1697p.size(); i16++) {
            jVar.o(((Integer) this.f1697p.get(i16)).intValue());
        }
        if (this.f1678B.size() > 0) {
            jVar.w(178);
            jVar.w(this.f1679C);
        }
        for (int i17 = 0; i17 < this.f1678B.size(); i17++) {
            jVar.o(((Integer) this.f1678B.get(i17)).intValue());
        }
        for (int i18 = 0; i18 < this.f1680D.size(); i18++) {
            jVar.p(23, (AbstractC0080b) this.f1680D.get(i18));
        }
        if (this.E.size() > 0) {
            jVar.w(IDMWbxmlConstants.WBXML_EXT_2);
            jVar.w(this.f1681F);
        }
        for (int i19 = 0; i19 < this.E.size(); i19++) {
            jVar.o(((Integer) this.E.get(i19)).intValue());
        }
        if ((this.f1688e & 64) == 64) {
            jVar.p(30, this.f1682G);
        }
        for (int i20 = 0; i20 < this.f1683H.size(); i20++) {
            jVar.n(31, ((Integer) this.f1683H.get(i20)).intValue());
        }
        if ((this.f1688e & 128) == 128) {
            jVar.p(32, this.f1684I);
        }
        c0091mN.d(19000, jVar);
        jVar.s(this.f1687d);
    }

    public final void q() {
        this.f = 6;
        this.f1689g = 0;
        this.f1690h = 0;
        this.f1691i = Collections.emptyList();
        this.f1692j = Collections.emptyList();
        this.f1693k = Collections.emptyList();
        this.f1695m = Collections.emptyList();
        this.f1696o = Collections.emptyList();
        this.f1697p = Collections.emptyList();
        this.f1699r = Collections.emptyList();
        this.f1700s = Collections.emptyList();
        this.f1701t = Collections.emptyList();
        this.f1702u = Collections.emptyList();
        this.f1703v = Collections.emptyList();
        this.f1704w = Collections.emptyList();
        this.f1706y = 0;
        this.f1707z = Q.f1476v;
        this.f1677A = 0;
        this.f1678B = Collections.emptyList();
        this.f1680D = Collections.emptyList();
        this.E = Collections.emptyList();
        this.f1682G = X.f1536i;
        this.f1683H = Collections.emptyList();
        this.f1684I = e0.f1629g;
    }

    public C0061j() {
        this.f1694l = -1;
        this.n = -1;
        this.f1698q = -1;
        this.f1705x = -1;
        this.f1679C = -1;
        this.f1681F = -1;
        this.f1685J = (byte) -1;
        this.f1686K = -1;
        this.f1687d = AbstractC0083e.f2383c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public C0061j(C0084f c0084f, C0087i c0087i) {
        boolean z4;
        C0064m c0064m;
        this.f1694l = -1;
        this.n = -1;
        this.f1698q = -1;
        this.f1705x = -1;
        this.f1679C = -1;
        this.f1681F = -1;
        this.f1685J = (byte) -1;
        this.f1686K = -1;
        q();
        C0082d c0082dS = AbstractC0083e.s();
        B1.j jVarJ = B1.j.j(c0082dS, 1);
        boolean z5 = false;
        char c2 = 0;
        while (true) {
            ?? O4 = 64;
            if (!z5) {
                try {
                    try {
                        int iN = c0084f.n();
                        C0057f c0057fI = null;
                        switch (iN) {
                            case 0:
                                z4 = true;
                                z5 = true;
                                c2 = c2;
                            case 8:
                                z4 = true;
                                this.f1688e |= 1;
                                this.f = c0084f.f();
                                c2 = c2;
                            case 16:
                                int i5 = (c2 == true ? 1 : 0) & 32;
                                char c5 = c2;
                                if (i5 != 32) {
                                    this.f1693k = new ArrayList();
                                    c5 = (c2 == true ? 1 : 0) | ' ';
                                }
                                this.f1693k.add(Integer.valueOf(c0084f.f()));
                                c2 = c5;
                                z4 = true;
                                c2 = c2;
                            case 18:
                                int iD = c0084f.d(c0084f.k());
                                int i6 = (c2 == true ? 1 : 0) & 32;
                                char c6 = c2;
                                if (i6 != 32) {
                                    c6 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1693k = new ArrayList();
                                        c6 = (c2 == true ? 1 : 0) | ' ';
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1693k.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD);
                                c2 = c6;
                                z4 = true;
                                c2 = c2;
                            case 24:
                                this.f1688e |= 2;
                                this.f1689g = c0084f.f();
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 32:
                                this.f1688e |= 4;
                                this.f1690h = c0084f.f();
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 42:
                                int i7 = (c2 == true ? 1 : 0) & 8;
                                char c7 = c2;
                                if (i7 != 8) {
                                    this.f1691i = new ArrayList();
                                    c7 = (c2 == true ? 1 : 0) | '\b';
                                }
                                this.f1691i.add(c0084f.g(W.f1526p, c0087i));
                                c2 = c7;
                                z4 = true;
                                c2 = c2;
                            case 50:
                                int i8 = (c2 == true ? 1 : 0) & 16;
                                char c8 = c2;
                                if (i8 != 16) {
                                    this.f1692j = new ArrayList();
                                    c8 = (c2 == true ? 1 : 0) | 16;
                                }
                                this.f1692j.add(c0084f.g(Q.f1477w, c0087i));
                                c2 = c8;
                                z4 = true;
                                c2 = c2;
                            case 56:
                                int i9 = (c2 == true ? 1 : 0) & 64;
                                char c9 = c2;
                                if (i9 != 64) {
                                    this.f1695m = new ArrayList();
                                    c9 = (c2 == true ? 1 : 0) | '@';
                                }
                                this.f1695m.add(Integer.valueOf(c0084f.f()));
                                c2 = c9;
                                z4 = true;
                                c2 = c2;
                            case 58:
                                int iD2 = c0084f.d(c0084f.k());
                                int i10 = (c2 == true ? 1 : 0) & 64;
                                char c10 = c2;
                                if (i10 != 64) {
                                    c10 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1695m = new ArrayList();
                                        c10 = (c2 == true ? 1 : 0) | '@';
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1695m.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD2);
                                c2 = c10;
                                z4 = true;
                                c2 = c2;
                            case 66:
                                int i11 = (c2 == true ? 1 : 0) & 512;
                                char c11 = c2;
                                if (i11 != 512) {
                                    this.f1699r = new ArrayList();
                                    c11 = (c2 == true ? 1 : 0) | 512;
                                }
                                this.f1699r.add(c0084f.g(C0063l.f1712l, c0087i));
                                c2 = c11;
                                z4 = true;
                                c2 = c2;
                            case 74:
                                int i12 = (c2 == true ? 1 : 0) & 1024;
                                char c12 = c2;
                                if (i12 != 1024) {
                                    this.f1700s = new ArrayList();
                                    c12 = (c2 == true ? 1 : 0) | 1024;
                                }
                                this.f1700s.add(c0084f.g(C0075y.f1790x, c0087i));
                                c2 = c12;
                                z4 = true;
                                c2 = c2;
                            case 82:
                                int i13 = (c2 == true ? 1 : 0) & 2048;
                                char c13 = c2;
                                if (i13 != 2048) {
                                    this.f1701t = new ArrayList();
                                    c13 = (c2 == true ? 1 : 0) | 2048;
                                }
                                this.f1701t.add(c0084f.g(G.f1404x, c0087i));
                                c2 = c13;
                                z4 = true;
                                c2 = c2;
                            case 90:
                                int i14 = (c2 == true ? 1 : 0) & 4096;
                                char c14 = c2;
                                if (i14 != 4096) {
                                    this.f1702u = new ArrayList();
                                    c14 = (c2 == true ? 1 : 0) | 4096;
                                }
                                this.f1702u.add(c0084f.g(T.f1503r, c0087i));
                                c2 = c14;
                                z4 = true;
                                c2 = c2;
                            case 106:
                                int i15 = (c2 == true ? 1 : 0) & 8192;
                                char c15 = c2;
                                if (i15 != 8192) {
                                    this.f1703v = new ArrayList();
                                    c15 = (c2 == true ? 1 : 0) | 8192;
                                }
                                this.f1703v.add(c0084f.g(C0070t.f1749j, c0087i));
                                c2 = c15;
                                z4 = true;
                                c2 = c2;
                            case 128:
                                int i16 = (c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT;
                                char c16 = c2;
                                if (i16 != 16384) {
                                    this.f1704w = new ArrayList();
                                    c16 = (c2 == true ? 1 : 0) | 16384;
                                }
                                this.f1704w.add(Integer.valueOf(c0084f.f()));
                                c2 = c16;
                                z4 = true;
                                c2 = c2;
                            case 130:
                                int iD3 = c0084f.d(c0084f.k());
                                int i17 = (c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT;
                                char c17 = c2;
                                if (i17 != 16384) {
                                    c17 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1704w = new ArrayList();
                                        c17 = (c2 == true ? 1 : 0) | 16384;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1704w.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD3);
                                c2 = c17;
                                z4 = true;
                                c2 = c2;
                            case 136:
                                this.f1688e |= 8;
                                this.f1706y = c0084f.f();
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 146:
                                P pT = (this.f1688e & 16) == 16 ? this.f1707z.e() : null;
                                Q q2 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1707z = q2;
                                if (pT != null) {
                                    pT.i(q2);
                                    this.f1707z = pT.g();
                                }
                                this.f1688e |= 16;
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 152:
                                this.f1688e |= 32;
                                this.f1677A = c0084f.f();
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 162:
                                int i18 = (c2 == true ? 1 : 0) & 128;
                                char c18 = c2;
                                if (i18 != 128) {
                                    this.f1696o = new ArrayList();
                                    c18 = (c2 == true ? 1 : 0) | 128;
                                }
                                this.f1696o.add(c0084f.g(Q.f1477w, c0087i));
                                c2 = c18;
                                z4 = true;
                                c2 = c2;
                            case 168:
                                int i19 = (c2 == true ? 1 : 0) & 256;
                                char c19 = c2;
                                if (i19 != 256) {
                                    this.f1697p = new ArrayList();
                                    c19 = (c2 == true ? 1 : 0) | 256;
                                }
                                this.f1697p.add(Integer.valueOf(c0084f.f()));
                                c2 = c19;
                                z4 = true;
                                c2 = c2;
                            case 170:
                                int iD4 = c0084f.d(c0084f.k());
                                int i20 = (c2 == true ? 1 : 0) & 256;
                                char c20 = c2;
                                if (i20 != 256) {
                                    c20 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1697p = new ArrayList();
                                        c20 = (c2 == true ? 1 : 0) | 256;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1697p.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD4);
                                c2 = c20;
                                z4 = true;
                                c2 = c2;
                            case 176:
                                int i21 = (c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH;
                                char c21 = c2;
                                if (i21 != 262144) {
                                    this.f1678B = new ArrayList();
                                    c21 = (c2 == true ? 1 : 0) | 0;
                                }
                                this.f1678B.add(Integer.valueOf(c0084f.f()));
                                c2 = c21;
                                z4 = true;
                                c2 = c2;
                            case 178:
                                int iD5 = c0084f.d(c0084f.k());
                                int i22 = (c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH;
                                char c22 = c2;
                                if (i22 != 262144) {
                                    c22 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1678B = new ArrayList();
                                        c22 = (c2 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1678B.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD5);
                                c2 = c22;
                                z4 = true;
                                c2 = c2;
                            case 186:
                                int i23 = (c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME;
                                char c23 = c2;
                                if (i23 != 524288) {
                                    this.f1680D = new ArrayList();
                                    c23 = (c2 == true ? 1 : 0) | 0;
                                }
                                this.f1680D.add(c0084f.g(Q.f1477w, c0087i));
                                c2 = c23;
                                z4 = true;
                                c2 = c2;
                            case IDMWbxmlConstants.WBXML_EXT_0 /* 192 */:
                                int i24 = (c2 == true ? 1 : 0) & IDMDmInterface.IDM_MAX_OBJ_SIZE;
                                char c24 = c2;
                                if (i24 != 1048576) {
                                    this.E = new ArrayList();
                                    c24 = (c2 == true ? 1 : 0) | 0;
                                }
                                this.E.add(Integer.valueOf(c0084f.f()));
                                c2 = c24;
                                z4 = true;
                                c2 = c2;
                            case IDMWbxmlConstants.WBXML_EXT_2 /* 194 */:
                                int iD6 = c0084f.d(c0084f.k());
                                int i25 = (c2 == true ? 1 : 0) & IDMDmInterface.IDM_MAX_OBJ_SIZE;
                                char c25 = c2;
                                if (i25 != 1048576) {
                                    c25 = c2;
                                    if (c0084f.b() > 0) {
                                        this.E = new ArrayList();
                                        c25 = (c2 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.E.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD6);
                                c2 = c25;
                                z4 = true;
                                c2 = c2;
                            case IDMCallbackStatusInterface.IDM_DL_STATE_DOWNLOAD_PAUSE /* 242 */:
                                if ((this.f1688e & 64) == 64) {
                                    X x4 = this.f1682G;
                                    x4.getClass();
                                    c0057fI = X.i(x4);
                                }
                                C0057f c0057f = c0057fI;
                                X x5 = (X) c0084f.g(X.f1537j, c0087i);
                                this.f1682G = x5;
                                if (c0057f != null) {
                                    c0057f.l(x5);
                                    this.f1682G = c0057f.h();
                                }
                                this.f1688e |= 64;
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            case 248:
                                int i26 = (c2 == true ? 1 : 0) & 4194304;
                                char c26 = c2;
                                if (i26 != 4194304) {
                                    this.f1683H = new ArrayList();
                                    c26 = (c2 == true ? 1 : 0) | 0;
                                }
                                this.f1683H.add(Integer.valueOf(c0084f.f()));
                                c2 = c26;
                                z4 = true;
                                c2 = c2;
                            case 250:
                                int iD7 = c0084f.d(c0084f.k());
                                int i27 = (c2 == true ? 1 : 0) & 4194304;
                                char c27 = c2;
                                if (i27 != 4194304) {
                                    c27 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1683H = new ArrayList();
                                        c27 = (c2 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1683H.add(Integer.valueOf(c0084f.f()));
                                }
                                c0084f.c(iD7);
                                c2 = c27;
                                z4 = true;
                                c2 = c2;
                            case 258:
                                if ((this.f1688e & 128) == 128) {
                                    e0 e0Var = this.f1684I;
                                    e0Var.getClass();
                                    c0064m = new C0064m(2);
                                    c0064m.f = Collections.emptyList();
                                    c0064m.m(e0Var);
                                } else {
                                    c0064m = null;
                                }
                                e0 e0Var2 = (e0) c0084f.g(e0.f1630h, c0087i);
                                this.f1684I = e0Var2;
                                if (c0064m != null) {
                                    c0064m.m(e0Var2);
                                    this.f1684I = c0064m.i();
                                }
                                this.f1688e |= 128;
                                c2 = c2;
                                z4 = true;
                                c2 = c2;
                            default:
                                O4 = o(c0084f, jVarJ, c0087i, iN);
                                c2 = c2;
                                if (O4 == 0) {
                                    z5 = true;
                                    c2 = c2;
                                }
                                z4 = true;
                                c2 = c2;
                        }
                    } catch (Throwable th) {
                        if (((c2 == true ? 1 : 0) & 32) == 32) {
                            this.f1693k = Collections.unmodifiableList(this.f1693k);
                        }
                        if (((c2 == true ? 1 : 0) & 8) == 8) {
                            this.f1691i = Collections.unmodifiableList(this.f1691i);
                        }
                        if (((c2 == true ? 1 : 0) & 16) == 16) {
                            this.f1692j = Collections.unmodifiableList(this.f1692j);
                        }
                        if (((c2 == true ? 1 : 0) & 64) == O4) {
                            this.f1695m = Collections.unmodifiableList(this.f1695m);
                        }
                        if (((c2 == true ? 1 : 0) & 512) == 512) {
                            this.f1699r = Collections.unmodifiableList(this.f1699r);
                        }
                        if (((c2 == true ? 1 : 0) & 1024) == 1024) {
                            this.f1700s = Collections.unmodifiableList(this.f1700s);
                        }
                        if (((c2 == true ? 1 : 0) & 2048) == 2048) {
                            this.f1701t = Collections.unmodifiableList(this.f1701t);
                        }
                        if (((c2 == true ? 1 : 0) & 4096) == 4096) {
                            this.f1702u = Collections.unmodifiableList(this.f1702u);
                        }
                        if (((c2 == true ? 1 : 0) & 8192) == 8192) {
                            this.f1703v = Collections.unmodifiableList(this.f1703v);
                        }
                        if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT) == 16384) {
                            this.f1704w = Collections.unmodifiableList(this.f1704w);
                        }
                        if (((c2 == true ? 1 : 0) & 128) == 128) {
                            this.f1696o = Collections.unmodifiableList(this.f1696o);
                        }
                        if (((c2 == true ? 1 : 0) & 256) == 256) {
                            this.f1697p = Collections.unmodifiableList(this.f1697p);
                        }
                        if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH) == 262144) {
                            this.f1678B = Collections.unmodifiableList(this.f1678B);
                        }
                        if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME) == 524288) {
                            this.f1680D = Collections.unmodifiableList(this.f1680D);
                        }
                        if (((c2 == true ? 1 : 0) & IDMDmInterface.IDM_MAX_OBJ_SIZE) == 1048576) {
                            this.E = Collections.unmodifiableList(this.E);
                        }
                        if (((c2 == true ? 1 : 0) & 4194304) == 4194304) {
                            this.f1683H = Collections.unmodifiableList(this.f1683H);
                        }
                        try {
                            jVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            this.f1687d = c0082dS.l();
                            throw th2;
                        }
                        this.f1687d = c0082dS.l();
                        m();
                        throw th;
                    }
                } catch (C0098u e5) {
                    e5.f2416c = this;
                    throw e5;
                } catch (IOException e6) {
                    C0098u c0098u = new C0098u(e6.getMessage());
                    c0098u.f2416c = this;
                    throw c0098u;
                }
            } else {
                if (((c2 == true ? 1 : 0) & 32) == 32) {
                    this.f1693k = Collections.unmodifiableList(this.f1693k);
                }
                if (((c2 == true ? 1 : 0) & 8) == 8) {
                    this.f1691i = Collections.unmodifiableList(this.f1691i);
                }
                if (((c2 == true ? 1 : 0) & 16) == 16) {
                    this.f1692j = Collections.unmodifiableList(this.f1692j);
                }
                if (((c2 == true ? 1 : 0) & 64) == 64) {
                    this.f1695m = Collections.unmodifiableList(this.f1695m);
                }
                if (((c2 == true ? 1 : 0) & 512) == 512) {
                    this.f1699r = Collections.unmodifiableList(this.f1699r);
                }
                if (((c2 == true ? 1 : 0) & 1024) == 1024) {
                    this.f1700s = Collections.unmodifiableList(this.f1700s);
                }
                if (((c2 == true ? 1 : 0) & 2048) == 2048) {
                    this.f1701t = Collections.unmodifiableList(this.f1701t);
                }
                if (((c2 == true ? 1 : 0) & 4096) == 4096) {
                    this.f1702u = Collections.unmodifiableList(this.f1702u);
                }
                if (((c2 == true ? 1 : 0) & 8192) == 8192) {
                    this.f1703v = Collections.unmodifiableList(this.f1703v);
                }
                if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT) == 16384) {
                    this.f1704w = Collections.unmodifiableList(this.f1704w);
                }
                if (((c2 == true ? 1 : 0) & 128) == 128) {
                    this.f1696o = Collections.unmodifiableList(this.f1696o);
                }
                if (((c2 == true ? 1 : 0) & 256) == 256) {
                    this.f1697p = Collections.unmodifiableList(this.f1697p);
                }
                if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH) == 262144) {
                    this.f1678B = Collections.unmodifiableList(this.f1678B);
                }
                if (((c2 == true ? 1 : 0) & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME) == 524288) {
                    this.f1680D = Collections.unmodifiableList(this.f1680D);
                }
                if (((c2 == true ? 1 : 0) & IDMDmInterface.IDM_MAX_OBJ_SIZE) == 1048576) {
                    this.E = Collections.unmodifiableList(this.E);
                }
                if (((c2 == true ? 1 : 0) & 4194304) == 4194304) {
                    this.f1683H = Collections.unmodifiableList(this.f1683H);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f1687d = c0082dS.l();
                    throw th3;
                }
                this.f1687d = c0082dS.l();
                m();
                return;
            }
        }
    }
}
