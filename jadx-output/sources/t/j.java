package t;

import java.util.Iterator;
import s.C0824a;
import s.C0827d;

/* loaded from: classes.dex */
public final class j extends o {
    @Override // t.InterfaceC0855d
    public final void a(InterfaceC0855d interfaceC0855d) {
        C0824a c0824a = (C0824a) this.f9119b;
        int i5 = c0824a.m0;
        f fVar = this.f9124h;
        Iterator it = fVar.f9105l.iterator();
        int i6 = 0;
        int i7 = -1;
        while (it.hasNext()) {
            int i8 = ((f) it.next()).f9100g;
            if (i7 == -1 || i8 < i7) {
                i7 = i8;
            }
            if (i6 < i8) {
                i6 = i8;
            }
        }
        if (i5 == 0 || i5 == 2) {
            fVar.d(i7 + c0824a.o0);
        } else {
            fVar.d(i6 + c0824a.o0);
        }
    }

    @Override // t.o
    public final void d() {
        C0827d c0827d = this.f9119b;
        if (c0827d instanceof C0824a) {
            f fVar = this.f9124h;
            fVar.f9096b = true;
            C0824a c0824a = (C0824a) c0827d;
            int i5 = c0824a.m0;
            boolean z4 = c0824a.n0;
            int i6 = 0;
            if (i5 == 0) {
                fVar.f9099e = 4;
                while (i6 < c0824a.l0) {
                    C0827d c0827d2 = c0824a.k0[i6];
                    if (z4 || c0827d2.f8919a0 != 8) {
                        f fVar2 = c0827d2.f8924d.f9124h;
                        fVar2.f9104k.add(fVar);
                        fVar.f9105l.add(fVar2);
                    }
                    i6++;
                }
                m(this.f9119b.f8924d.f9124h);
                m(this.f9119b.f8924d.f9125i);
                return;
            }
            if (i5 == 1) {
                fVar.f9099e = 5;
                while (i6 < c0824a.l0) {
                    C0827d c0827d3 = c0824a.k0[i6];
                    if (z4 || c0827d3.f8919a0 != 8) {
                        f fVar3 = c0827d3.f8924d.f9125i;
                        fVar3.f9104k.add(fVar);
                        fVar.f9105l.add(fVar3);
                    }
                    i6++;
                }
                m(this.f9119b.f8924d.f9124h);
                m(this.f9119b.f8924d.f9125i);
                return;
            }
            if (i5 == 2) {
                fVar.f9099e = 6;
                while (i6 < c0824a.l0) {
                    C0827d c0827d4 = c0824a.k0[i6];
                    if (z4 || c0827d4.f8919a0 != 8) {
                        f fVar4 = c0827d4.f8926e.f9124h;
                        fVar4.f9104k.add(fVar);
                        fVar.f9105l.add(fVar4);
                    }
                    i6++;
                }
                m(this.f9119b.f8926e.f9124h);
                m(this.f9119b.f8926e.f9125i);
                return;
            }
            if (i5 != 3) {
                return;
            }
            fVar.f9099e = 7;
            while (i6 < c0824a.l0) {
                C0827d c0827d5 = c0824a.k0[i6];
                if (z4 || c0827d5.f8919a0 != 8) {
                    f fVar5 = c0827d5.f8926e.f9125i;
                    fVar5.f9104k.add(fVar);
                    fVar.f9105l.add(fVar5);
                }
                i6++;
            }
            m(this.f9119b.f8926e.f9124h);
            m(this.f9119b.f8926e.f9125i);
        }
    }

    @Override // t.o
    public final void e() {
        C0827d c0827d = this.f9119b;
        if (c0827d instanceof C0824a) {
            int i5 = ((C0824a) c0827d).m0;
            f fVar = this.f9124h;
            if (i5 == 0 || i5 == 1) {
                c0827d.f8910S = fVar.f9100g;
            } else {
                c0827d.f8911T = fVar.f9100g;
            }
        }
    }

    @Override // t.o
    public final void f() {
        this.f9120c = null;
        this.f9124h.c();
    }

    @Override // t.o
    public final boolean k() {
        return false;
    }

    public final void m(f fVar) {
        f fVar2 = this.f9124h;
        fVar2.f9104k.add(fVar);
        fVar.f9105l.add(fVar2);
    }
}
