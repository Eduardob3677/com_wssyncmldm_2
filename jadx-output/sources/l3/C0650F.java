package l3;

import c3.InterfaceC0222b;
import com.idm.fotaagent.database.room.data.entity.Property;

/* renamed from: l3.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0650F extends h0 implements InterfaceC0222b {

    /* renamed from: g, reason: collision with root package name */
    public final C0651G f8112g;

    public C0650F(C0651G c0651g) {
        d3.i.e(Property.TABLE_NAME, c0651g);
        this.f8112g = c0651g;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) throws W1.h {
        ((C0650F) this.f8112g.f8113l.getValue()).i(obj);
        return Q2.k.f2225a;
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8112g;
    }
}
