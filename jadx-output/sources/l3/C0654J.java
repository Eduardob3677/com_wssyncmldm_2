package l3;

import c3.InterfaceC0224d;
import com.idm.fotaagent.database.room.data.entity.Property;

/* renamed from: l3.J, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0654J extends h0 implements InterfaceC0224d {

    /* renamed from: g, reason: collision with root package name */
    public final C0655K f8116g;

    public C0654J(C0655K c0655k) {
        d3.i.e(Property.TABLE_NAME, c0655k);
        this.f8116g = c0655k;
    }

    @Override // c3.InterfaceC0224d
    public final Object c(Object obj, Object obj2, Object obj3) throws W1.h {
        ((C0654J) this.f8116g.f8117l.getValue()).i(obj, obj2, obj3);
        return Q2.k.f2225a;
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8116g;
    }
}
