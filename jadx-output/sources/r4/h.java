package r4;

import c3.InterfaceC0222b;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class h implements k {

    /* renamed from: a, reason: collision with root package name */
    public final k f8849a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f8850b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0222b f8851c;

    public h(k kVar, InterfaceC0222b interfaceC0222b, InterfaceC0222b interfaceC0222b2) {
        d3.i.e("sequence", kVar);
        d3.i.e("transformer", interfaceC0222b);
        this.f8849a = kVar;
        this.f8850b = interfaceC0222b;
        this.f8851c = interfaceC0222b2;
    }

    @Override // r4.k
    public final Iterator iterator() {
        return new g(this);
    }
}
