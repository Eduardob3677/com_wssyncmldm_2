package l3;

import c3.InterfaceC0221a;
import com.idm.fotaagent.database.room.data.entity.Property;

/* renamed from: l3.U, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0664U extends AbstractC0681f0 implements InterfaceC0221a {

    /* renamed from: g, reason: collision with root package name */
    public final C0666W f8138g;

    public C0664U(C0666W c0666w) {
        d3.i.e(Property.TABLE_NAME, c0666w);
        this.f8138g = c0666w;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        return ((C0664U) this.f8138g.f8141k.getValue()).i(new Object[0]);
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8138g;
    }
}
