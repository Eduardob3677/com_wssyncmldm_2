package J;

import android.view.View;
import android.view.ViewGroup;
import c3.InterfaceC0223c;

/* loaded from: classes.dex */
public final class W extends W2.f implements InterfaceC0223c {

    /* renamed from: e, reason: collision with root package name */
    public ViewGroup f943e;
    public View f;

    /* renamed from: g, reason: collision with root package name */
    public int f944g;

    /* renamed from: h, reason: collision with root package name */
    public int f945h;

    /* renamed from: i, reason: collision with root package name */
    public int f946i;

    /* renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f947j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f948k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(ViewGroup viewGroup, U2.a aVar) {
        super(aVar);
        this.f948k = viewGroup;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return ((W) e((r4.l) obj, (U2.a) obj2)).g(Q2.k.f2225a);
    }

    @Override // W2.a
    public final U2.a e(Object obj, U2.a aVar) {
        W w2 = new W(this.f948k, aVar);
        w2.f947j = obj;
        return w2;
    }

    @Override // W2.a
    public final Object g(Object obj) throws Throwable {
        r4.l lVar;
        ViewGroup viewGroup;
        int childCount;
        int i5;
        int i6;
        Object obj2;
        int i7;
        ViewGroup viewGroup2;
        r4.l lVar2;
        Object obj3 = V2.a.f2785c;
        int i8 = this.f946i;
        Object obj4 = Q2.k.f2225a;
        if (i8 != 0) {
            if (i8 == 1) {
                childCount = this.f945h;
                i6 = this.f944g;
                View view = this.f;
                viewGroup = this.f943e;
                lVar = (r4.l) this.f947j;
                i3.x.g1(obj);
                if (view instanceof ViewGroup) {
                    W w2 = new W((ViewGroup) view, null);
                    this.f947j = lVar;
                    this.f943e = viewGroup;
                    this.f = null;
                    this.f944g = i6;
                    this.f945h = childCount;
                    this.f946i = 2;
                    lVar.getClass();
                    r4.l lVar3 = new r4.l();
                    lVar3.f = Z0.j.y(lVar3, w2, lVar3);
                    if (lVar3.hasNext()) {
                        lVar.f8860e = lVar3;
                        lVar.f8858c = 2;
                        lVar.f = this;
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
                    i7 = i6;
                    viewGroup2 = viewGroup;
                    lVar2 = lVar;
                }
                i5 = i6 + 1;
            } else {
                if (i8 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                childCount = this.f945h;
                i7 = this.f944g;
                viewGroup2 = this.f943e;
                lVar2 = (r4.l) this.f947j;
                i3.x.g1(obj);
            }
            viewGroup = viewGroup2;
            lVar = lVar2;
            i6 = i7;
            i5 = i6 + 1;
        } else {
            i3.x.g1(obj);
            lVar = (r4.l) this.f947j;
            viewGroup = this.f948k;
            childCount = viewGroup.getChildCount();
            i5 = 0;
        }
        if (i5 >= childCount) {
            return obj4;
        }
        View childAt = viewGroup.getChildAt(i5);
        this.f947j = lVar;
        this.f943e = viewGroup;
        this.f = childAt;
        this.f944g = i5;
        this.f945h = childCount;
        this.f946i = 1;
        lVar.f8859d = childAt;
        lVar.f8858c = 3;
        lVar.f = this;
        return obj3;
    }
}
