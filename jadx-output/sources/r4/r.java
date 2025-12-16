package r4;

import c3.InterfaceC0222b;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class r implements k {

    /* renamed from: a, reason: collision with root package name */
    public final k f8867a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f8868b;

    public r(k kVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("transformer", interfaceC0222b);
        this.f8867a = kVar;
        this.f8868b = interfaceC0222b;
    }

    @Override // r4.k
    public final Iterator iterator() {
        return new q(this);
    }
}
