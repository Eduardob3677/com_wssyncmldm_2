package h4;

/* loaded from: classes.dex */
public final class H extends AbstractC0450c {

    /* renamed from: b, reason: collision with root package name */
    public static final H f7021b = new H(0);

    /* renamed from: c, reason: collision with root package name */
    public static final H f7022c = new H(1);

    /* renamed from: d, reason: collision with root package name */
    public static final H f7023d = new H(2);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7024a;

    public /* synthetic */ H(int i5) {
        this.f7024a = i5;
    }

    @Override // h4.AbstractC0450c
    public final k4.d x(I i5, k4.c cVar) {
        switch (this.f7024a) {
            case 0:
                d3.i.e("state", i5);
                d3.i.e("type", cVar);
                return i5.f7027c.o(cVar);
            case 1:
                d3.i.e("state", i5);
                d3.i.e("type", cVar);
                throw new UnsupportedOperationException("Should not be called");
            default:
                d3.i.e("state", i5);
                d3.i.e("type", cVar);
                return i5.f7027c.g(cVar);
        }
    }
}
