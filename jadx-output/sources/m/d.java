package m;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class d extends e implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public c f8254c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8255d = true;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f8256e;

    public d(f fVar) {
        this.f8256e = fVar;
    }

    @Override // m.e
    public final void a(c cVar) {
        c cVar2 = this.f8254c;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f;
            this.f8254c = cVar3;
            this.f8255d = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f8255d) {
            return this.f8256e.f8257c != null;
        }
        c cVar = this.f8254c;
        return (cVar == null || cVar.f8253e == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8255d) {
            this.f8255d = false;
            this.f8254c = this.f8256e.f8257c;
        } else {
            c cVar = this.f8254c;
            this.f8254c = cVar != null ? cVar.f8253e : null;
        }
        return this.f8254c;
    }
}
