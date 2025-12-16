package R3;

import c1.AbstractC0213D;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0804g;

/* renamed from: R3.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0091m implements i4.c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2403a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2404b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2405c;

    public C0091m(AbstractC0092n abstractC0092n) {
        Iterator it;
        C0088j c0088j = abstractC0092n.f2406c;
        boolean z4 = c0088j.f2399c;
        F f = c0088j.f2397a;
        if (z4) {
            Iterator it2 = ((L) f.entrySet()).iterator();
            v vVar = new v();
            vVar.f2418d = it2;
            it = vVar;
        } else {
            it = ((L) f.entrySet()).iterator();
        }
        this.f2404b = it;
        if (it.hasNext()) {
            this.f2405c = (Map.Entry) it.next();
        }
        this.f2403a = false;
    }

    public static C0091m c() {
        C0091m c0091m = new C0091m();
        c0091m.f2403a = true;
        return c0091m;
    }

    @Override // i4.c
    public boolean a(h4.J j3, h4.J j5) {
        InterfaceC0799b interfaceC0799b = (InterfaceC0799b) this.f2404b;
        d3.i.e("$a", interfaceC0799b);
        InterfaceC0799b interfaceC0799b2 = (InterfaceC0799b) this.f2405c;
        d3.i.e("$b", interfaceC0799b2);
        d3.i.e("c1", j3);
        d3.i.e("c2", j5);
        if (d3.i.a(j3, j5)) {
            return true;
        }
        InterfaceC0804g interfaceC0804gI = j3.i();
        InterfaceC0804g interfaceC0804gI2 = j5.i();
        if (!(interfaceC0804gI instanceof InterfaceC0789Q) || !(interfaceC0804gI2 instanceof InterfaceC0789Q)) {
            return false;
        }
        return T3.c.f2719a.d((InterfaceC0789Q) interfaceC0804gI, (InterfaceC0789Q) interfaceC0804gI2, this.f2403a, new T3.a(interfaceC0799b, interfaceC0799b2));
    }

    public C0091m b() {
        AbstractC0213D.a("execute parameter required", ((b1.k) this.f2404b) != null);
        Z0.c[] cVarArr = (Z0.c[]) this.f2405c;
        boolean z4 = this.f2403a;
        C0091m c0091m = new C0091m();
        c0091m.f2405c = this;
        c0091m.f2404b = cVarArr;
        c0091m.f2403a = z4;
        return c0091m;
    }

    public void d(int i5, B1.j jVar) throws IOException {
        while (true) {
            Map.Entry entry = (Map.Entry) this.f2405c;
            if (entry == null || ((C0093o) entry.getKey()).f2407c >= i5) {
                return;
            }
            C0093o c0093o = (C0093o) ((Map.Entry) this.f2405c).getKey();
            int iC = 0;
            if (this.f2403a && c0093o.f2408d.f2365c == U.MESSAGE && !c0093o.f2409e) {
                AbstractC0080b abstractC0080b = (AbstractC0080b) ((Map.Entry) this.f2405c).getValue();
                jVar.y(1, 3);
                jVar.y(2, 0);
                jVar.w(c0093o.f2407c);
                jVar.p(3, abstractC0080b);
                jVar.y(1, 4);
            } else {
                Object value = ((Map.Entry) this.f2405c).getValue();
                C0088j c0088j = C0088j.f2396d;
                T t2 = c0093o.f2408d;
                boolean z4 = c0093o.f2409e;
                int i6 = c0093o.f2407c;
                if (z4) {
                    List list = (List) value;
                    if (c0093o.f) {
                        jVar.y(i6, 2);
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            iC += C0088j.c(t2, it.next());
                        }
                        jVar.w(iC);
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            C0088j.l(jVar, t2, it2.next());
                        }
                    } else {
                        Iterator it3 = list.iterator();
                        while (it3.hasNext()) {
                            C0088j.k(jVar, t2, i6, it3.next());
                        }
                    }
                } else {
                    C0088j.k(jVar, t2, i6, value);
                }
            }
            Iterator it4 = (Iterator) this.f2404b;
            if (it4.hasNext()) {
                this.f2405c = (Map.Entry) it4.next();
            } else {
                this.f2405c = null;
            }
        }
    }

    public void e(u1.h hVar) {
        u1.m mVar;
        synchronized (this.f2404b) {
            if (((ArrayDeque) this.f2405c) != null && !this.f2403a) {
                this.f2403a = true;
                while (true) {
                    synchronized (this.f2404b) {
                        try {
                            mVar = (u1.m) ((ArrayDeque) this.f2405c).poll();
                            if (mVar == null) {
                                this.f2403a = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    mVar.onComplete(hVar);
                }
            }
        }
    }

    public void f(u1.m mVar) {
        synchronized (this.f2404b) {
            try {
                if (((ArrayDeque) this.f2405c) == null) {
                    this.f2405c = new ArrayDeque();
                }
                ((ArrayDeque) this.f2405c).add(mVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
