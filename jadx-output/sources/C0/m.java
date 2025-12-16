package C0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f287a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f288b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f289c = null;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f290d = null;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f291e;
    public final /* synthetic */ ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ o f292g;

    public m(o oVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f292g = oVar;
        this.f287a = obj;
        this.f288b = arrayList;
        this.f291e = obj2;
        this.f = arrayList2;
    }

    @Override // C0.s
    public final void c(t tVar) {
        tVar.w(this);
    }

    @Override // C0.u, C0.s
    public final void d(t tVar) {
        o oVar = this.f292g;
        Object obj = this.f287a;
        if (obj != null) {
            oVar.s(obj, this.f288b, null);
        }
        Object obj2 = this.f289c;
        if (obj2 != null) {
            oVar.s(obj2, this.f290d, null);
        }
        Object obj3 = this.f291e;
        if (obj3 != null) {
            oVar.s(obj3, this.f, null);
        }
    }
}
