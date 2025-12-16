package t;

import java.util.Iterator;

/* loaded from: classes.dex */
public class g extends f {

    /* renamed from: m, reason: collision with root package name */
    public int f9106m;

    public g(o oVar) {
        super(oVar);
        if (oVar instanceof k) {
            this.f9099e = 2;
        } else {
            this.f9099e = 3;
        }
    }

    @Override // t.f
    public final void d(int i5) {
        if (this.f9103j) {
            return;
        }
        this.f9103j = true;
        this.f9100g = i5;
        Iterator it = this.f9104k.iterator();
        while (it.hasNext()) {
            InterfaceC0855d interfaceC0855d = (InterfaceC0855d) it.next();
            interfaceC0855d.a(interfaceC0855d);
        }
    }
}
