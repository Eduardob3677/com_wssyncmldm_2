package h4;

import A3.C0005d;
import java.util.Collection;
import java.util.List;
import r3.C0787O;
import r3.InterfaceC0804g;

/* renamed from: h4.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0454g implements J {

    /* renamed from: a, reason: collision with root package name */
    public int f7055a;

    /* renamed from: b, reason: collision with root package name */
    public final g4.d f7056b;

    public AbstractC0454g(g4.o oVar) {
        d3.i.e("storageManager", oVar);
        this.f7056b = new g4.d((g4.l) oVar, new B3.k(15, this), new C0005d(17, this));
    }

    public abstract Collection b();

    public abstract AbstractC0468v c();

    public abstract C0787O d();

    @Override // h4.J
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final List j() {
        return ((C0452e) this.f7056b.a()).f7052b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J) || obj.hashCode() != hashCode()) {
            return false;
        }
        J j3 = (J) obj;
        if (j3.k().size() != k().size()) {
            return false;
        }
        InterfaceC0804g interfaceC0804gI = i();
        InterfaceC0804g interfaceC0804gI2 = j3.i();
        if (interfaceC0804gI2 == null || j4.i.f(interfaceC0804gI) || T3.e.p(interfaceC0804gI) || j4.i.f(interfaceC0804gI2) || T3.e.p(interfaceC0804gI2)) {
            return false;
        }
        return f(interfaceC0804gI2);
    }

    public abstract boolean f(InterfaceC0804g interfaceC0804g);

    public final int hashCode() {
        int i5 = this.f7055a;
        if (i5 != 0) {
            return i5;
        }
        InterfaceC0804g interfaceC0804gI = i();
        int iIdentityHashCode = (j4.i.f(interfaceC0804gI) || T3.e.p(interfaceC0804gI)) ? System.identityHashCode(this) : T3.e.g(interfaceC0804gI).f2238a.hashCode();
        this.f7055a = iIdentityHashCode;
        return iIdentityHashCode;
    }

    public List l(List list) {
        return list;
    }
}
