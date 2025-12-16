package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0062k extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1708g;

    /* renamed from: h, reason: collision with root package name */
    public List f1709h;

    /* renamed from: i, reason: collision with root package name */
    public List f1710i;

    public static C0062k h() {
        C0062k c0062k = new C0062k();
        c0062k.f1708g = 6;
        c0062k.f1709h = Collections.emptyList();
        c0062k.f1710i = Collections.emptyList();
        return c0062k;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0063l c0063lG = g();
        if (c0063lG.b()) {
            return c0063lG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0062k c0062kH = h();
        c0062kH.i(g());
        return c0062kH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0019  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0063l c0063l = null;
        try {
            try {
                i((C0063l) C0063l.f1712l.a(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0063l c0063l2 = (C0063l) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0063l = c0063l2;
                    if (c0063l != null) {
                        i(c0063l);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0063l != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((C0063l) abstractC0095q);
        return this;
    }

    public final C0063l g() {
        C0063l c0063l = new C0063l(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0063l.f = this.f1708g;
        if ((i5 & 2) == 2) {
            this.f1709h = Collections.unmodifiableList(this.f1709h);
            this.f &= -3;
        }
        c0063l.f1715g = this.f1709h;
        if ((this.f & 4) == 4) {
            this.f1710i = Collections.unmodifiableList(this.f1710i);
            this.f &= -5;
        }
        c0063l.f1716h = this.f1710i;
        c0063l.f1714e = i6;
        return c0063l;
    }

    public final void i(C0063l c0063l) {
        if (c0063l == C0063l.f1711k) {
            return;
        }
        if ((c0063l.f1714e & 1) == 1) {
            int i5 = c0063l.f;
            this.f = 1 | this.f;
            this.f1708g = i5;
        }
        if (!c0063l.f1715g.isEmpty()) {
            if (this.f1709h.isEmpty()) {
                this.f1709h = c0063l.f1715g;
                this.f &= -3;
            } else {
                if ((this.f & 2) != 2) {
                    this.f1709h = new ArrayList(this.f1709h);
                    this.f |= 2;
                }
                this.f1709h.addAll(c0063l.f1715g);
            }
        }
        if (!c0063l.f1716h.isEmpty()) {
            if (this.f1710i.isEmpty()) {
                this.f1710i = c0063l.f1716h;
                this.f &= -5;
            } else {
                if ((this.f & 4) != 4) {
                    this.f1710i = new ArrayList(this.f1710i);
                    this.f |= 4;
                }
                this.f1710i.addAll(c0063l.f1716h);
            }
        }
        f(c0063l);
        this.f2400c = this.f2400c.m(c0063l.f1713d);
    }
}
