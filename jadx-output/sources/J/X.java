package J;

import android.view.View;
import android.view.ViewGroup;
import c3.InterfaceC0223c;

/* loaded from: classes.dex */
public final class X extends W2.f implements InterfaceC0223c {

    /* renamed from: e, reason: collision with root package name */
    public int f949e;
    public /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ View f950g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(View view, U2.a aVar) {
        super(aVar);
        this.f950g = view;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return ((X) e((r4.l) obj, (U2.a) obj2)).g(Q2.k.f2225a);
    }

    @Override // W2.a
    public final U2.a e(Object obj, U2.a aVar) {
        X x4 = new X(this.f950g, aVar);
        x4.f = obj;
        return x4;
    }

    @Override // W2.a
    public final Object g(Object obj) throws Throwable {
        Object obj2;
        Object obj3 = V2.a.f2785c;
        int i5 = this.f949e;
        View view = this.f950g;
        if (i5 == 0) {
            i3.x.g1(obj);
            r4.l lVar = (r4.l) this.f;
            this.f = lVar;
            this.f949e = 1;
            lVar.f8859d = view;
            lVar.f8858c = 3;
            lVar.f = this;
            return obj3;
        }
        Object obj4 = Q2.k.f2225a;
        if (i5 == 1) {
            r4.l lVar2 = (r4.l) this.f;
            i3.x.g1(obj);
            if (view instanceof ViewGroup) {
                W w2 = new W((ViewGroup) view, null);
                this.f = null;
                this.f949e = 2;
                lVar2.getClass();
                r4.l lVar3 = new r4.l();
                lVar3.f = Z0.j.y(lVar3, w2, lVar3);
                if (lVar3.hasNext()) {
                    lVar2.f8860e = lVar3;
                    lVar2.f8858c = 2;
                    lVar2.f = this;
                    obj2 = obj3;
                } else {
                    obj2 = obj4;
                }
                if (obj2 != obj3) {
                    obj2 = obj4;
                }
                if (obj2 == obj3) {
                    return obj3;
                }
            }
        } else {
            if (i5 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i3.x.g1(obj);
        }
        return obj4;
    }
}
