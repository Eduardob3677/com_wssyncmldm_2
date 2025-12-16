package t;

import s.C0827d;

/* loaded from: classes.dex */
public final class i extends o {
    @Override // t.InterfaceC0855d
    public final void a(InterfaceC0855d interfaceC0855d) {
        f fVar = this.f9124h;
        if (fVar.f9097c && !fVar.f9103j) {
            fVar.d((int) ((((f) fVar.f9105l.get(0)).f9100g * ((s.h) this.f9119b).k0) + 0.5f));
        }
    }

    @Override // t.o
    public final void d() {
        C0827d c0827d = this.f9119b;
        s.h hVar = (s.h) c0827d;
        int i5 = hVar.l0;
        int i6 = hVar.m0;
        int i7 = hVar.o0;
        f fVar = this.f9124h;
        if (i7 == 1) {
            if (i5 != -1) {
                fVar.f9105l.add(c0827d.f8905N.f8924d.f9124h);
                this.f9119b.f8905N.f8924d.f9124h.f9104k.add(fVar);
                fVar.f = i5;
            } else if (i6 != -1) {
                fVar.f9105l.add(c0827d.f8905N.f8924d.f9125i);
                this.f9119b.f8905N.f8924d.f9125i.f9104k.add(fVar);
                fVar.f = -i6;
            } else {
                fVar.f9096b = true;
                fVar.f9105l.add(c0827d.f8905N.f8924d.f9125i);
                this.f9119b.f8905N.f8924d.f9125i.f9104k.add(fVar);
            }
            m(this.f9119b.f8924d.f9124h);
            m(this.f9119b.f8924d.f9125i);
            return;
        }
        if (i5 != -1) {
            fVar.f9105l.add(c0827d.f8905N.f8926e.f9124h);
            this.f9119b.f8905N.f8926e.f9124h.f9104k.add(fVar);
            fVar.f = i5;
        } else if (i6 != -1) {
            fVar.f9105l.add(c0827d.f8905N.f8926e.f9125i);
            this.f9119b.f8905N.f8926e.f9125i.f9104k.add(fVar);
            fVar.f = -i6;
        } else {
            fVar.f9096b = true;
            fVar.f9105l.add(c0827d.f8905N.f8926e.f9125i);
            this.f9119b.f8905N.f8926e.f9125i.f9104k.add(fVar);
        }
        m(this.f9119b.f8926e.f9124h);
        m(this.f9119b.f8926e.f9125i);
    }

    @Override // t.o
    public final void e() {
        C0827d c0827d = this.f9119b;
        int i5 = ((s.h) c0827d).o0;
        f fVar = this.f9124h;
        if (i5 == 1) {
            c0827d.f8910S = fVar.f9100g;
        } else {
            c0827d.f8911T = fVar.f9100g;
        }
    }

    @Override // t.o
    public final void f() {
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
