package t;

import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class f implements InterfaceC0855d {

    /* renamed from: d, reason: collision with root package name */
    public final o f9098d;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f9100g;

    /* renamed from: a, reason: collision with root package name */
    public o f9095a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9096b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9097c = false;

    /* renamed from: e, reason: collision with root package name */
    public int f9099e = 1;

    /* renamed from: h, reason: collision with root package name */
    public int f9101h = 1;

    /* renamed from: i, reason: collision with root package name */
    public g f9102i = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9103j = false;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f9104k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f9105l = new ArrayList();

    public f(o oVar) {
        this.f9098d = oVar;
    }

    @Override // t.InterfaceC0855d
    public final void a(InterfaceC0855d interfaceC0855d) {
        ArrayList arrayList = this.f9105l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((f) it.next()).f9103j) {
                return;
            }
        }
        this.f9097c = true;
        o oVar = this.f9095a;
        if (oVar != null) {
            oVar.a(this);
        }
        if (this.f9096b) {
            this.f9098d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        f fVar = null;
        int i5 = 0;
        while (it2.hasNext()) {
            f fVar2 = (f) it2.next();
            if (!(fVar2 instanceof g)) {
                i5++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i5 == 1 && fVar.f9103j) {
            g gVar = this.f9102i;
            if (gVar != null) {
                if (!gVar.f9103j) {
                    return;
                } else {
                    this.f = this.f9101h * gVar.f9100g;
                }
            }
            d(fVar.f9100g + this.f);
        }
        o oVar2 = this.f9095a;
        if (oVar2 != null) {
            oVar2.a(this);
        }
    }

    public final void b(InterfaceC0855d interfaceC0855d) {
        this.f9104k.add(interfaceC0855d);
        if (this.f9103j) {
            interfaceC0855d.a(interfaceC0855d);
        }
    }

    public final void c() {
        this.f9105l.clear();
        this.f9104k.clear();
        this.f9103j = false;
        this.f9100g = 0;
        this.f9097c = false;
        this.f9096b = false;
    }

    public void d(int i5) {
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

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f9098d.f9119b.f8921b0);
        sb.append(":");
        sb.append(AbstractC0432c.t(this.f9099e));
        sb.append("(");
        sb.append(this.f9103j ? Integer.valueOf(this.f9100g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f9105l.size());
        sb.append(":d=");
        sb.append(this.f9104k.size());
        sb.append(">");
        return sb.toString();
    }
}
