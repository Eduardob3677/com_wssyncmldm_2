package h4;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class G extends n4.d {

    /* renamed from: d, reason: collision with root package name */
    public static final e.v f7019d = new e.v(2);

    /* renamed from: e, reason: collision with root package name */
    public static final G f7020e = new G(R2.u.f2325c);

    public G(List list) {
        this.f8341c = n4.k.f8359c;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0455h c0455h = (C0455h) it.next();
            c0455h.getClass();
            int iP = f7019d.p(d3.q.f6516a.b(C0455h.class));
            int iL = this.f8341c.l();
            if (iL != 0) {
                if (iL == 1) {
                    n4.a aVar = this.f8341c;
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>", aVar);
                    n4.q qVar = (n4.q) aVar;
                    int i5 = qVar.f8373d;
                    if (i5 == iP) {
                        this.f8341c = new n4.q(c0455h, iP);
                    } else {
                        n4.c cVar = new n4.c();
                        cVar.f8339c = new Object[20];
                        cVar.f8340d = 0;
                        this.f8341c = cVar;
                        cVar.m(i5, qVar.f8372c);
                    }
                }
                this.f8341c.m(iP, c0455h);
            } else {
                this.f8341c = new n4.q(c0455h, iP);
            }
        }
    }
}
