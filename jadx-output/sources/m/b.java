package m;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class b extends e implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public c f8248c;

    /* renamed from: d, reason: collision with root package name */
    public c f8249d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8250e;

    public b(c cVar, c cVar2, int i5) {
        this.f8250e = i5;
        this.f8248c = cVar2;
        this.f8249d = cVar;
    }

    @Override // m.e
    public final void a(c cVar) {
        c cVarC = null;
        if (this.f8248c == cVar && cVar == this.f8249d) {
            this.f8249d = null;
            this.f8248c = null;
        }
        c cVar2 = this.f8248c;
        if (cVar2 == cVar) {
            this.f8248c = b(cVar2);
        }
        c cVar3 = this.f8249d;
        if (cVar3 == cVar) {
            c cVar4 = this.f8248c;
            if (cVar3 != cVar4 && cVar4 != null) {
                cVarC = c(cVar3);
            }
            this.f8249d = cVarC;
        }
    }

    public final c b(c cVar) {
        switch (this.f8250e) {
            case 0:
                return cVar.f;
            default:
                return cVar.f8253e;
        }
    }

    public final c c(c cVar) {
        switch (this.f8250e) {
            case 0:
                return cVar.f8253e;
            default:
                return cVar.f;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8249d != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f8249d;
        c cVar2 = this.f8248c;
        this.f8249d = (cVar == cVar2 || cVar2 == null) ? null : c(cVar);
        return cVar;
    }
}
