package j4;

import c3.InterfaceC0222b;
import java.util.Collection;
import java.util.Set;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class j extends e {
    @Override // j4.e, a4.o
    public final Set a() {
        throw new IllegalStateException();
    }

    @Override // j4.e, a4.o
    public final Set b() {
        throw new IllegalStateException();
    }

    @Override // j4.e, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        throw new IllegalStateException(this.f7608b + ", required name: " + fVar);
    }

    @Override // j4.e, a4.o
    public final /* bridge */ /* synthetic */ Collection d(Q3.f fVar, z3.b bVar) {
        d(fVar, bVar);
        throw null;
    }

    @Override // j4.e, a4.o
    public final Set e() {
        throw new IllegalStateException();
    }

    @Override // j4.e, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        throw new IllegalStateException(this.f7608b);
    }

    @Override // j4.e, a4.o
    public final /* bridge */ /* synthetic */ Collection g(Q3.f fVar, z3.b bVar) {
        g(fVar, bVar);
        throw null;
    }

    @Override // j4.e
    /* renamed from: h */
    public final Set d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        throw new IllegalStateException(this.f7608b + ", required name: " + fVar);
    }

    @Override // j4.e
    /* renamed from: i */
    public final Set g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        throw new IllegalStateException(this.f7608b + ", required name: " + fVar);
    }

    @Override // j4.e
    public final String toString() {
        return "ThrowingScope{" + this.f7608b + '}';
    }
}
