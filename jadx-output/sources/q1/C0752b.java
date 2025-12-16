package q1;

import java.util.Collections;
import java.util.HashMap;
import r2.C0772e;

/* renamed from: q1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0752b implements e2.d {

    /* renamed from: a, reason: collision with root package name */
    public static final C0752b f8614a = new C0752b();

    /* renamed from: b, reason: collision with root package name */
    public static final e2.c f8615b;

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8615b = new e2.c("messagingClientEvent", Collections.unmodifiableMap(new HashMap(map)));
    }

    @Override // e2.InterfaceC0415a
    public final void a(Object obj, Object obj2) {
        ((e2.e) obj2).e(f8615b, ((C0772e) obj).f8776a);
    }
}
