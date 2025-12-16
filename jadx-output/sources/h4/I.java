package h4;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public class I {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7025a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7026b;

    /* renamed from: c, reason: collision with root package name */
    public final i4.b f7027c;

    /* renamed from: d, reason: collision with root package name */
    public final i4.e f7028d;

    /* renamed from: e, reason: collision with root package name */
    public final i4.f f7029e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayDeque f7030g;

    /* renamed from: h, reason: collision with root package name */
    public q4.h f7031h;

    public I(boolean z4, boolean z5, i4.b bVar, i4.e eVar, i4.f fVar) {
        d3.i.e("typeSystemContext", bVar);
        d3.i.e("kotlinTypePreparator", eVar);
        d3.i.e("kotlinTypeRefiner", fVar);
        this.f7025a = z4;
        this.f7026b = z5;
        this.f7027c = bVar;
        this.f7028d = eVar;
        this.f7029e = fVar;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.f7030g;
        d3.i.b(arrayDeque);
        arrayDeque.clear();
        q4.h hVar = this.f7031h;
        d3.i.b(hVar);
        hVar.clear();
    }

    public boolean b(k4.c cVar, k4.c cVar2) {
        d3.i.e("subType", cVar);
        d3.i.e("superType", cVar2);
        return true;
    }

    public final void c() {
        if (this.f7030g == null) {
            this.f7030g = new ArrayDeque(4);
        }
        if (this.f7031h == null) {
            this.f7031h = new q4.h();
        }
    }

    public final Z d(k4.c cVar) {
        d3.i.e("type", cVar);
        return this.f7028d.u(cVar);
    }

    public final AbstractC0468v e(k4.c cVar) {
        d3.i.e("type", cVar);
        this.f7029e.getClass();
        return (AbstractC0468v) cVar;
    }
}
