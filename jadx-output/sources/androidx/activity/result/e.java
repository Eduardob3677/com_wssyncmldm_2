package androidx.activity.result;

import b.AbstractC0194a;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class e extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3187a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0194a f3188b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f3189c;

    public e(h hVar, String str, AbstractC0194a abstractC0194a) {
        this.f3189c = hVar;
        this.f3187a = str;
        this.f3188b = abstractC0194a;
    }

    public final void a(Object obj) {
        h hVar = this.f3189c;
        HashMap map = hVar.f3195b;
        String str = this.f3187a;
        Integer num = (Integer) map.get(str);
        AbstractC0194a abstractC0194a = this.f3188b;
        if (num != null) {
            hVar.f3197d.add(str);
            try {
                hVar.b(num.intValue(), abstractC0194a, obj);
                return;
            } catch (Exception e5) {
                hVar.f3197d.remove(str);
                throw e5;
            }
        }
        throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0194a + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
    }

    public final void b() {
        this.f3189c.f(this.f3187a);
    }
}
