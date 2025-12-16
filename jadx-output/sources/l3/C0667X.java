package l3;

import com.idm.fotaagent.database.room.data.entity.Property;
import i3.InterfaceC0492m;

/* renamed from: l3.X, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0667X extends AbstractC0681f0 implements InterfaceC0492m {

    /* renamed from: g, reason: collision with root package name */
    public final C0669Z f8142g;

    public C0667X(C0669Z c0669z) {
        d3.i.e(Property.TABLE_NAME, c0669z);
        this.f8142g = c0669z;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        return ((C0667X) this.f8142g.f8145k.getValue()).i(obj);
    }

    @Override // l3.AbstractC0677d0
    public final j0 p() {
        return this.f8142g;
    }
}
