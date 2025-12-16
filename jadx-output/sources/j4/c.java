package j4;

import R2.u;
import c3.InterfaceC0222b;
import java.util.Collection;
import java.util.List;
import o3.AbstractC0732i;
import o3.C0728e;
import r3.InterfaceC0780H;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0821x;
import s3.C0844g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class c implements InterfaceC0821x {

    /* renamed from: c, reason: collision with root package name */
    public static final c f7604c = new c();

    /* renamed from: d, reason: collision with root package name */
    public static final Q3.f f7605d = Q3.f.g("<Error module>");

    /* renamed from: e, reason: collision with root package name */
    public static final u f7606e = u.f2325c;
    public static final C0728e f = C0728e.f;

    @Override // r3.InterfaceC0821x
    public final List E0() {
        return f7606e;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0821x
    public final Object U(I2.a aVar) {
        d3.i.e("capability", aVar);
        return null;
    }

    @Override // r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0807j a() {
        return this;
    }

    @Override // r3.InterfaceC0821x
    public final InterfaceC0780H a0(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        throw new IllegalStateException("Should not be called!");
    }

    @Override // r3.InterfaceC0821x
    public final AbstractC0732i g() {
        return f;
    }

    @Override // r3.InterfaceC0807j
    public final Q3.f getName() {
        return f7605d;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return null;
    }

    @Override // r3.InterfaceC0821x
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("fqName", cVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return u.f2325c;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return C0844g.f9041a;
    }

    @Override // r3.InterfaceC0821x
    public final boolean t0(InterfaceC0821x interfaceC0821x) {
        d3.i.e("targetModule", interfaceC0821x);
        return false;
    }
}
