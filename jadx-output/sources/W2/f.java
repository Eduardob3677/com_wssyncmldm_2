package W2;

import d3.InterfaceC0394f;
import d3.i;
import d3.q;

/* loaded from: classes.dex */
public abstract class f extends e implements InterfaceC0394f {

    /* renamed from: d, reason: collision with root package name */
    public final int f2840d;

    public f(U2.a aVar) {
        super(aVar);
        this.f2840d = 2;
    }

    @Override // d3.InterfaceC0394f
    public final int b() {
        return this.f2840d;
    }

    @Override // W2.a
    public final String toString() {
        if (this.f2836c != null) {
            return super.toString();
        }
        String strF = q.f6516a.f(this);
        i.d("renderLambdaToString(this)", strF);
        return strF;
    }
}
