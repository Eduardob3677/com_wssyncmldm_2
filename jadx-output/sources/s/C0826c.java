package s;

import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import k.Q0;
import t.n;

/* renamed from: s.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0826c {

    /* renamed from: b, reason: collision with root package name */
    public int f8886b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8887c;

    /* renamed from: d, reason: collision with root package name */
    public final C0827d f8888d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8889e;
    public C0826c f;

    /* renamed from: i, reason: collision with root package name */
    public r.f f8892i;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f8885a = null;

    /* renamed from: g, reason: collision with root package name */
    public int f8890g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f8891h = -1;

    public C0826c(C0827d c0827d, int i5) {
        this.f8888d = c0827d;
        this.f8889e = i5;
    }

    public final void a(C0826c c0826c, int i5) {
        b(c0826c, i5, -1, false);
    }

    public final boolean b(C0826c c0826c, int i5, int i6, boolean z4) {
        if (c0826c == null) {
            j();
            return true;
        }
        if (!z4 && !i(c0826c)) {
            return false;
        }
        this.f = c0826c;
        if (c0826c.f8885a == null) {
            c0826c.f8885a = new HashSet();
        }
        HashSet hashSet = this.f.f8885a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        if (i5 > 0) {
            this.f8890g = i5;
        } else {
            this.f8890g = 0;
        }
        this.f8891h = i6;
        return true;
    }

    public final void c(int i5, ArrayList arrayList, n nVar) {
        HashSet hashSet = this.f8885a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                t.h.b(((C0826c) it.next()).f8888d, i5, arrayList, nVar);
            }
        }
    }

    public final int d() {
        if (this.f8887c) {
            return this.f8886b;
        }
        return 0;
    }

    public final int e() {
        C0826c c0826c;
        if (this.f8888d.f8919a0 == 8) {
            return 0;
        }
        int i5 = this.f8891h;
        return (i5 <= -1 || (c0826c = this.f) == null || c0826c.f8888d.f8919a0 != 8) ? this.f8890g : i5;
    }

    public final C0826c f() {
        int i5 = this.f8889e;
        int iF = Q0.f(i5);
        C0827d c0827d = this.f8888d;
        switch (iF) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return c0827d.E;
            case 2:
                return c0827d.f8897F;
            case 3:
                return c0827d.f8895C;
            case 4:
                return c0827d.f8896D;
            default:
                throw new AssertionError(AbstractC0432c.l(i5));
        }
    }

    public final boolean g() {
        HashSet hashSet = this.f8885a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((C0826c) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f != null;
    }

    public final boolean i(C0826c c0826c) {
        if (c0826c == null) {
            return false;
        }
        int i5 = this.f8889e;
        C0827d c0827d = c0826c.f8888d;
        int i6 = c0826c.f8889e;
        if (i6 == i5) {
            return i5 != 6 || (c0827d.f8949y && this.f8888d.f8949y);
        }
        switch (Q0.f(i5)) {
            case 0:
            case 5:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z4 = i6 == 2 || i6 == 4;
                if (c0827d instanceof h) {
                    return z4 || i6 == 8;
                }
                return z4;
            case 2:
            case 4:
                boolean z5 = i6 == 3 || i6 == 5;
                if (c0827d instanceof h) {
                    return z5 || i6 == 9;
                }
                return z5;
            case 6:
                return (i6 == 6 || i6 == 8 || i6 == 9) ? false : true;
            default:
                throw new AssertionError(AbstractC0432c.l(i5));
        }
    }

    public final void j() {
        HashSet hashSet;
        C0826c c0826c = this.f;
        if (c0826c != null && (hashSet = c0826c.f8885a) != null) {
            hashSet.remove(this);
            if (this.f.f8885a.size() == 0) {
                this.f.f8885a = null;
            }
        }
        this.f8885a = null;
        this.f = null;
        this.f8890g = 0;
        this.f8891h = -1;
        this.f8887c = false;
        this.f8886b = 0;
    }

    public final void k() {
        r.f fVar = this.f8892i;
        if (fVar == null) {
            this.f8892i = new r.f(1);
        } else {
            fVar.c();
        }
    }

    public final void l(int i5) {
        this.f8886b = i5;
        this.f8887c = true;
    }

    public final String toString() {
        return this.f8888d.f8921b0 + ":" + AbstractC0432c.l(this.f8889e);
    }
}
