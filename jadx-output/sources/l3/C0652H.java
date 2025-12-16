package l3;

import com.idm.fotaagent.database.room.data.entity.Property;
import i3.InterfaceC0487h;

/* renamed from: l3.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0652H extends h0 implements InterfaceC0487h {

    /* renamed from: g, reason: collision with root package name */
    public final C0653I f8114g;

    public C0652H(C0653I c0653i) {
        d3.i.e(Property.TABLE_NAME, c0653i);
        this.f8114g = c0653i;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) throws W1.h {
        ((C0652H) this.f8114g.f8115l.getValue()).i(obj, obj2);
        return Q2.k.f2225a;
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8114g;
    }
}
