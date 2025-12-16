package l3;

import c3.InterfaceC0223c;
import com.idm.fotaagent.database.room.data.entity.Property;

/* renamed from: l3.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0671a0 extends AbstractC0681f0 implements InterfaceC0223c {

    /* renamed from: g, reason: collision with root package name */
    public final C0675c0 f8147g;

    public C0671a0(C0675c0 c0675c0) {
        d3.i.e(Property.TABLE_NAME, c0675c0);
        this.f8147g = c0675c0;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return ((C0671a0) this.f8147g.f8161k.getValue()).i(obj, obj2);
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8147g;
    }
}
