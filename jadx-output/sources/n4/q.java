package n4;

import h4.C0455h;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q extends a {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8372c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8373d;

    public q(C0455h c0455h, int i5) {
        this.f8372c = c0455h;
        this.f8373d = i5;
    }

    @Override // n4.a
    public final Object get(int i5) {
        if (i5 == this.f8373d) {
            return this.f8372c;
        }
        return null;
    }

    @Override // n4.a, java.lang.Iterable
    public final Iterator iterator() {
        return new p(0, this);
    }

    @Override // n4.a
    public final int l() {
        return 1;
    }

    @Override // n4.a
    public final void m(int i5, Object obj) {
        throw new IllegalStateException();
    }
}
