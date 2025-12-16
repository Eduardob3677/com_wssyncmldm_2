package com.google.android.gms.internal.p000firebaseauthapi;

import J3.c;
import f1.AbstractC0420a;
import java.io.IOException;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.t3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0342t3 implements InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5733c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f5734d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ G3 f5735e;
    public final /* synthetic */ C0303n f;

    public /* synthetic */ C0342t3(C0303n c0303n, String str, G3 g32, int i5) {
        this.f5733c = i5;
        this.f = c0303n;
        this.f5734d = str;
        this.f5735e = g32;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void b(String str) {
        switch (this.f5733c) {
            case 0:
                this.f5735e.b(AbstractC0420a.t0(str));
                break;
            case 1:
                this.f5735e.b(AbstractC0420a.t0(str));
                break;
            case 2:
                this.f5735e.b(AbstractC0420a.t0(str));
                break;
            default:
                this.f5735e.b(AbstractC0420a.t0(str));
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void k(Y3 y3) throws IOException {
        switch (this.f5733c) {
            case 0:
                C0373y4 c0373y4 = (C0373y4) y3;
                ((c) this.f.f5655d).r(new C0302m4(c0373y4.f5788d, 3), new C0377z2(this, this, c0373y4, 5));
                break;
            case 1:
                C0254e4 c0254e4 = new C0254e4(2, ((C0373y4) y3).f5788d, this.f5734d);
                c cVar = (c) this.f.f5655d;
                C0303n c0303n = new C0303n(9, this);
                cVar.getClass();
                V3 v32 = (V3) cVar.f1139e;
                AbstractC0332s.l(v32.j("/mfaEnrollment:withdraw", (String) cVar.f1142i), c0254e4, c0303n, T4.class, (C0230a4) v32.f5455b);
                break;
            case 2:
                C0373y4 c0373y42 = (C0373y4) y3;
                G4 g42 = new G4();
                g42.d(c0373y42.f5788d);
                String str = this.f5734d;
                if (str == null) {
                    ((M4) g42.f5383j).f5433d.add("EMAIL");
                } else {
                    g42.f5379e = str;
                }
                C0303n.s(this.f, this.f5735e, this, c0373y42, g42);
                break;
            default:
                C0373y4 c0373y43 = (C0373y4) y3;
                String str2 = c0373y43.f5788d;
                G4 g43 = new G4();
                g43.d(str2);
                String str3 = this.f5734d;
                if (str3 == null) {
                    ((M4) g43.f5383j).f5433d.add("PASSWORD");
                } else {
                    g43.f = str3;
                }
                C0303n.s(this.f, this.f5735e, this, c0373y43, g43);
                break;
        }
    }
}
