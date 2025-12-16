package r4;

import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import java.util.Iterator;
import r3.C0814q;

/* loaded from: classes.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8855a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f8856b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8857c;

    public j(k kVar) {
        C0814q c0814q = C0814q.f8825g;
        this.f8857c = kVar;
        this.f8856b = c0814q;
    }

    @Override // r4.k
    public final Iterator iterator() {
        switch (this.f8855a) {
            case 0:
                return new i(this);
            default:
                return new e(this);
        }
    }

    public j(InterfaceC0221a interfaceC0221a, InterfaceC0222b interfaceC0222b) {
        this.f8857c = interfaceC0221a;
        this.f8856b = interfaceC0222b;
    }
}
