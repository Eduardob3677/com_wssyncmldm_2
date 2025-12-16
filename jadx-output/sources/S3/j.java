package S3;

import com.idm.fotaagent.database.room.data.entity.Property;
import i3.InterfaceC0494o;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public Object f2643a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f2644b;

    public j(Object obj, k kVar) {
        this.f2644b = kVar;
        this.f2643a = obj;
    }

    public final Object a(InterfaceC0494o interfaceC0494o, Object obj) {
        d3.i.e(Property.TABLE_NAME, interfaceC0494o);
        return this.f2643a;
    }

    public final void b(InterfaceC0494o interfaceC0494o, Object obj) {
        d3.i.e(Property.TABLE_NAME, interfaceC0494o);
        if (this.f2644b.f2667a) {
            throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
        }
        this.f2643a = obj;
    }
}
