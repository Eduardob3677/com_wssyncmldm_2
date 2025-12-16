package h4;

import java.util.List;

/* renamed from: h4.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0461n extends AbstractC0472z {
    @Override // h4.AbstractC0468v
    public G I0() {
        return S0().I0();
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return S0().J0();
    }

    @Override // h4.AbstractC0468v
    public boolean K0() {
        return S0().K0();
    }

    public abstract AbstractC0472z S0();

    @Override // h4.Z
    /* renamed from: T0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public AbstractC0472z O0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472zS0 = S0();
        d3.i.e("type", abstractC0472zS0);
        return U0(abstractC0472zS0);
    }

    public abstract AbstractC0461n U0(AbstractC0472z abstractC0472z);

    @Override // h4.AbstractC0468v
    public final a4.o q0() {
        return S0().q0();
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return S0().u0();
    }
}
