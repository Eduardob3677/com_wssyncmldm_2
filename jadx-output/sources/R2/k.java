package R2;

import c3.InterfaceC0221a;
import e3.InterfaceC0416a;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class k implements Iterable, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2320c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f2321d;

    public /* synthetic */ k(int i5, Object obj) {
        this.f2320c = i5;
        this.f2321d = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f2320c) {
            case 0:
                return d3.t.c((Object[]) this.f2321d);
            case 1:
                return new y((Iterator) ((InterfaceC0221a) this.f2321d).a());
            default:
                return ((r4.k) this.f2321d).iterator();
        }
    }
}
