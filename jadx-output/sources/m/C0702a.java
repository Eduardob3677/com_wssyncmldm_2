package m;

import java.util.HashMap;

/* renamed from: m.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0702a extends f {

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f8247g = new HashMap();

    @Override // m.f
    public final c l(Object obj) {
        return (c) this.f8247g.get(obj);
    }

    @Override // m.f
    public final Object m(Object obj, Object obj2) {
        c cVarL = l(obj);
        if (cVarL != null) {
            return cVarL.f8252d;
        }
        HashMap map = this.f8247g;
        c cVar = new c(obj, obj2);
        this.f++;
        c cVar2 = this.f8258d;
        if (cVar2 == null) {
            this.f8257c = cVar;
            this.f8258d = cVar;
        } else {
            cVar2.f8253e = cVar;
            cVar.f = cVar2;
            this.f8258d = cVar;
        }
        map.put(obj, cVar);
        return null;
    }

    @Override // m.f
    public final Object n(Object obj) {
        Object objN = super.n(obj);
        this.f8247g.remove(obj);
        return objN;
    }
}
