package q1;

import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements e2.d {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ n f8626b = new n(0);

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ n f8627c = new n(1);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8628a;

    public /* synthetic */ n(int i5) {
        this.f8628a = i5;
    }

    @Override // e2.InterfaceC0415a
    public final void a(Object obj, Object obj2) {
        switch (this.f8628a) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                e2.e eVar = (e2.e) obj2;
                Charset charset = o.f;
                eVar.e(o.f8629g, entry.getKey());
                eVar.e(o.f8630h, entry.getValue());
                return;
            default:
                String strValueOf = String.valueOf(obj.getClass().getCanonicalName());
                throw new e2.b(strValueOf.length() != 0 ? "Couldn't find encoder for type ".concat(strValueOf) : new String("Couldn't find encoder for type "));
        }
    }
}
