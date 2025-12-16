package h4;

import c3.InterfaceC0222b;
import java.util.List;

/* renamed from: h4.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0469w extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7079d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ J f7080e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0469w(a4.o oVar, G g5, J j3, List list, boolean z4) {
        super(1);
        this.f7080e = j3;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f7079d) {
            case 0:
                d3.i.e("refiner", (i4.f) obj);
                this.f7080e.i();
                break;
            default:
                d3.i.e("kotlinTypeRefiner", (i4.f) obj);
                this.f7080e.i();
                break;
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0469w(G g5, J j3, List list, boolean z4) {
        super(1);
        this.f7080e = j3;
    }
}
