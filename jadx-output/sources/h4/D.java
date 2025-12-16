package h4;

import o3.AbstractC0732i;

/* loaded from: classes.dex */
public final class D extends N {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0472z f7015a;

    public D(AbstractC0732i abstractC0732i) {
        d3.i.e("kotlinBuiltIns", abstractC0732i);
        AbstractC0472z abstractC0472zO = abstractC0732i.o();
        d3.i.d("kotlinBuiltIns.nullableAnyType", abstractC0472zO);
        this.f7015a = abstractC0472zO;
    }

    @Override // h4.N
    public final int a() {
        return 3;
    }

    @Override // h4.N
    public final AbstractC0468v b() {
        return this.f7015a;
    }

    @Override // h4.N
    public final boolean c() {
        return true;
    }

    @Override // h4.N
    public final N d(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        return this;
    }
}
