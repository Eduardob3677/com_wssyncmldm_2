package s3;

import R2.t;
import java.util.Iterator;

/* renamed from: s3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0843f implements InterfaceC0845h {
    @Override // s3.InterfaceC0845h
    public final boolean b(Q3.c cVar) {
        return o4.a.n(this, cVar);
    }

    @Override // s3.InterfaceC0845h
    public final InterfaceC0839b f(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        return null;
    }

    @Override // s3.InterfaceC0845h
    public final boolean isEmpty() {
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return t.f2324c;
    }

    public final String toString() {
        return "EMPTY";
    }
}
