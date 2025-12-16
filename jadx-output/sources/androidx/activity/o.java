package androidx.activity;

import androidx.fragment.app.Q;
import c3.InterfaceC0221a;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class o extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3172d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f3173e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(v vVar, int i5) {
        super(0);
        this.f3172d = i5;
        this.f3173e = vVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        Object objPrevious;
        switch (this.f3172d) {
            case 0:
                this.f3173e.b();
                break;
            case 1:
                v vVar = this.f3173e;
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
                vVar.f3209c = null;
                break;
            default:
                this.f3173e.b();
                break;
        }
        return Q2.k.f2225a;
    }
}
