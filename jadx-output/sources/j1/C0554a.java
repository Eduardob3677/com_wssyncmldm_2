package j1;

import L0.c;
import android.content.Context;

/* renamed from: j1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0554a {

    /* renamed from: b, reason: collision with root package name */
    public static final C0554a f7602b;

    /* renamed from: a, reason: collision with root package name */
    public c f7603a;

    static {
        C0554a c0554a = new C0554a();
        c0554a.f7603a = null;
        f7602b = c0554a;
    }

    public static c a(Context context) {
        c cVar;
        C0554a c0554a = f7602b;
        synchronized (c0554a) {
            try {
                if (c0554a.f7603a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    c0554a.f7603a = new c(context, 2);
                }
                cVar = c0554a.f7603a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }
}
