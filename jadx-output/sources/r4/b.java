package r4;

import R2.y;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b implements k, c {

    /* renamed from: a, reason: collision with root package name */
    public final k f8836a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8837b;

    public b(k kVar, int i5) {
        d3.i.e("sequence", kVar);
        this.f8836a = kVar;
        this.f8837b = i5;
        if (i5 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i5 + '.').toString());
    }

    @Override // r4.c
    public final k a() {
        int i5 = this.f8837b + 1;
        return i5 < 0 ? new b(this, 1) : new b(this.f8836a, i5);
    }

    @Override // r4.k
    public final Iterator iterator() {
        return new y(this);
    }
}
