package i4;

import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.C0451d;

/* loaded from: classes.dex */
public final class l implements k {

    /* renamed from: c, reason: collision with root package name */
    public final e f7187c = e.f7170c;

    /* renamed from: d, reason: collision with root package name */
    public final T3.n f7188d = new T3.n(T3.n.f2736e);

    public final boolean a(AbstractC0468v abstractC0468v, AbstractC0468v abstractC0468v2) {
        d3.i.e("a", abstractC0468v);
        d3.i.e("b", abstractC0468v2);
        return C0451d.g(AbstractC0420a.i(false, false, null, this.f7187c, f.f7172a, 6), abstractC0468v.M0(), abstractC0468v2.M0());
    }

    public final boolean b(AbstractC0468v abstractC0468v, AbstractC0468v abstractC0468v2) {
        d3.i.e("subtype", abstractC0468v);
        d3.i.e("supertype", abstractC0468v2);
        return C0451d.n(C0451d.f7050a, AbstractC0420a.i(true, false, null, this.f7187c, f.f7172a, 6), abstractC0468v.M0(), abstractC0468v2.M0());
    }
}
