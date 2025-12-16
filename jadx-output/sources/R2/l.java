package R2;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class l implements r4.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2322a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2323b;

    public /* synthetic */ l(int i5, Object obj) {
        this.f2322a = i5;
        this.f2323b = obj;
    }

    @Override // r4.k
    public final Iterator iterator() {
        switch (this.f2322a) {
            case 0:
                return d3.t.c((Object[]) this.f2323b);
            default:
                return ((Iterable) this.f2323b).iterator();
        }
    }
}
