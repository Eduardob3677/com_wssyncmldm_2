package R3;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: R3.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0087i {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f2394b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Map f2395a;

    static {
        new C0087i(0);
    }

    public C0087i() {
        this.f2395a = new HashMap();
    }

    public final void a(C0094p c0094p) {
        this.f2395a.put(new C0086h(c0094p.f2413d.f2407c, c0094p.f2410a), c0094p);
    }

    public C0087i(int i5) {
        this.f2395a = Collections.emptyMap();
    }
}
