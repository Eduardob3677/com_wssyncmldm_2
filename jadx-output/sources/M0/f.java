package M0;

import A3.D;
import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final D f1822a;

    /* renamed from: b, reason: collision with root package name */
    public final d f1823b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1824c;

    public f(Context context, d dVar) {
        D d2 = new D(context, 8);
        this.f1824c = new HashMap();
        this.f1822a = d2;
        this.f1823b = dVar;
    }

    public final synchronized g a(String str) {
        if (this.f1824c.containsKey(str)) {
            return (g) this.f1824c.get(str);
        }
        CctBackendFactory cctBackendFactoryG0 = this.f1822a.G0(str);
        if (cctBackendFactoryG0 == null) {
            return null;
        }
        d dVar = this.f1823b;
        g gVarCreate = cctBackendFactoryG0.create(new b(dVar.f1816a, dVar.f1817b, dVar.f1818c, str));
        this.f1824c.put(str, gVarCreate);
        return gVarCreate;
    }
}
