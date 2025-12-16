package androidx.activity;

import androidx.fragment.app.Q;
import c3.InterfaceC0222b;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class n extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3170d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f3171e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(v vVar, int i5) {
        super(1);
        this.f3170d = i5;
        this.f3171e = vVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Object objPrevious;
        Object objPrevious2;
        switch (this.f3170d) {
            case 0:
                d3.i.e("backEvent", (b) obj);
                v vVar = this.f3171e;
                R2.h hVar = vVar.f3208b;
                ListIterator listIterator = hVar.listIterator(hVar.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        objPrevious = listIterator.previous();
                        if (((Q) objPrevious).f3760a) {
                        }
                    } else {
                        objPrevious = null;
                    }
                }
                vVar.f3209c = (Q) objPrevious;
                break;
            default:
                d3.i.e("backEvent", (b) obj);
                R2.h hVar2 = this.f3171e.f3208b;
                ListIterator listIterator2 = hVar2.listIterator(hVar2.size());
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        objPrevious2 = listIterator2.previous();
                        if (((Q) objPrevious2).f3760a) {
                        }
                    } else {
                        objPrevious2 = null;
                    }
                }
                break;
        }
        return Q2.k.f2225a;
    }
}
