package u3;

import java.util.Collection;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0804g;

/* renamed from: u3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0873e implements h4.J {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f4.t f9422a;

    public C0873e(f4.t tVar) {
        this.f9422a = tVar;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        return X3.f.e(this.f9422a);
    }

    @Override // h4.J
    public final boolean h() {
        return true;
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        return this.f9422a;
    }

    @Override // h4.J
    public final Collection j() {
        Collection collectionJ = this.f9422a.S0().J0().j();
        d3.i.d("declarationDescriptor.un…pe.constructor.supertypes", collectionJ);
        return collectionJ;
    }

    @Override // h4.J
    public final List k() {
        List list = this.f9422a.f6910r;
        if (list != null) {
            return list;
        }
        d3.i.g("typeConstructorParameters");
        throw null;
    }

    public final String toString() {
        return "[typealias " + this.f9422a.getName().b() + ']';
    }
}
