package d4;

import L3.G;
import c3.InterfaceC0221a;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.List;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class o extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r f6559d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f6560e;
    public final /* synthetic */ G f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(r rVar, boolean z4, G g5) {
        super(0);
        this.f6559d = rVar;
        this.f6560e = z4;
        this.f = g5;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        List listG1;
        r rVar = this.f6559d;
        X xA = rVar.a((InterfaceC0807j) rVar.f6569a.f5379e);
        if (xA != null) {
            G4 g42 = rVar.f6569a;
            boolean z4 = this.f6560e;
            G g5 = this.f;
            listG1 = z4 ? R2.m.g1(((i) g42.f5377c).f6533e.V(xA, g5)) : R2.m.g1(((i) g42.f5377c).f6533e.u(xA, g5));
        } else {
            listG1 = null;
        }
        return listG1 == null ? R2.u.f2325c : listG1;
    }
}
