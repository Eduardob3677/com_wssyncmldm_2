package d4;

import L3.Q;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import s2.C0837c;

/* loaded from: classes.dex */
public final class x extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6581d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ J3.c f6582e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(J3.c cVar, int i5) {
        super(1);
        this.f6581d = i5;
        this.f6582e = cVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f6581d) {
            case 0:
                int iIntValue = ((Number) obj).intValue();
                G4 g42 = (G4) this.f6582e.f1138d;
                Q3.b bVarL = L2.b.l((N3.f) g42.f5378d, iIntValue);
                boolean z4 = bVarL.f2232c;
                i iVar = (i) g42.f5377c;
                return z4 ? iVar.b(bVarL) : o4.a.f(iVar.f6530b, bVarL);
            case 1:
                int iIntValue2 = ((Number) obj).intValue();
                G4 g43 = (G4) this.f6582e.f1138d;
                Q3.b bVarL2 = L2.b.l((N3.f) g43.f5378d, iIntValue2);
                if (bVarL2.f2232c) {
                    return null;
                }
                InterfaceC0821x interfaceC0821x = ((i) g43.f5377c).f6530b;
                d3.i.e("<this>", interfaceC0821x);
                InterfaceC0804g interfaceC0804gF = o4.a.f(interfaceC0821x, bVarL2);
                if (interfaceC0804gF instanceof f4.t) {
                    return (f4.t) interfaceC0804gF;
                }
                return null;
            default:
                Q q2 = (Q) obj;
                d3.i.e("it", q2);
                return i3.x.I0(q2, (C0837c) ((G4) this.f6582e.f1138d).f);
        }
    }
}
