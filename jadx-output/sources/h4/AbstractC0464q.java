package h4;

import java.util.List;

/* renamed from: h4.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0464q extends Z implements k4.c {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f7069d;

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC0472z f7070e;

    public AbstractC0464q(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("lowerBound", abstractC0472z);
        d3.i.e("upperBound", abstractC0472z2);
        this.f7069d = abstractC0472z;
        this.f7070e = abstractC0472z2;
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        return Q0().I0();
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return Q0().J0();
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return Q0().K0();
    }

    public abstract AbstractC0472z Q0();

    public abstract String R0(S3.g gVar, S3.i iVar);

    @Override // h4.AbstractC0468v
    public a4.o q0() {
        return Q0().q0();
    }

    public String toString() {
        return S3.g.f2624e.Y(this);
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return Q0().u0();
    }
}
