package r4;

import c3.InterfaceC0222b;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f implements k {

    /* renamed from: a, reason: collision with root package name */
    public final k f8843a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8844b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0222b f8845c;

    public f(k kVar, boolean z4, InterfaceC0222b interfaceC0222b) {
        d3.i.e("predicate", interfaceC0222b);
        this.f8843a = kVar;
        this.f8844b = z4;
        this.f8845c = interfaceC0222b;
    }

    @Override // r4.k
    public final Iterator iterator() {
        return new e(this);
    }
}
