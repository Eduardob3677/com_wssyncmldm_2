package S3;

import c3.InterfaceC0222b;
import h0.AbstractC0432c;
import h4.AbstractC0468v;
import h4.N;
import java.io.IOException;

/* loaded from: classes.dex */
public final class e extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2616d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f2617e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(g gVar, int i5) {
        super(1);
        this.f2616d = i5;
        this.f2617e = gVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) throws IOException {
        switch (this.f2616d) {
            case 0:
                N n = (N) obj;
                d3.i.e("it", n);
                if (n.c()) {
                    return "*";
                }
                AbstractC0468v abstractC0468vB = n.b();
                d3.i.d("it.type", abstractC0468vB);
                String strY = this.f2617e.Y(abstractC0468vB);
                if (n.a() == 1) {
                    return strY;
                }
                return AbstractC0432c.n(n.a()) + ' ' + strY;
            case 1:
                V3.g gVar = (V3.g) obj;
                d3.i.e("it", gVar);
                return this.f2617e.B(gVar);
            default:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                d3.i.d("it", abstractC0468v);
                return this.f2617e.Y(abstractC0468v);
        }
    }
}
