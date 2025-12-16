package com.google.android.gms.internal.p000firebaseauthapi;

import J3.c;
import c1.AbstractC0213D;
import f1.AbstractC0420a;
import java.io.IOException;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.s3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0336s3 implements InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5714c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ G3 f5715d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0303n f5716e;

    public /* synthetic */ C0336s3(C0303n c0303n, G3 g32, int i5) {
        this.f5714c = i5;
        this.f5716e = c0303n;
        this.f5715d = g32;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void b(String str) {
        switch (this.f5714c) {
            case 0:
                this.f5715d.b(AbstractC0420a.t0(str));
                break;
            case 1:
                this.f5715d.b(AbstractC0420a.t0(str));
                break;
            case 2:
                this.f5715d.b(AbstractC0420a.t0(str));
                break;
            default:
                this.f5715d.b(AbstractC0420a.t0(str));
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void k(Y3 y3) throws IOException {
        switch (this.f5714c) {
            case 0:
                C0373y4 c0373y4 = (C0373y4) y3;
                G4 g42 = new G4();
                g42.d(c0373y4.f5788d);
                M4 m42 = (M4) g42.f5383j;
                m42.f5433d.add("EMAIL");
                m42.f5433d.add("PASSWORD");
                C0303n.s(this.f5716e, this.f5715d, this, c0373y4, g42);
                break;
            case 1:
                P4 p4 = (P4) y3;
                C0373y4 c0373y42 = new C0373y4(p4.f5459d, p4.f5458c, Long.valueOf(p4.f5460e), "Bearer", Long.valueOf(System.currentTimeMillis()));
                Boolean boolValueOf = Boolean.valueOf(p4.f);
                C0303n c0303n = this.f5716e;
                c0303n.getClass();
                G3 g32 = this.f5715d;
                AbstractC0213D.e(g32);
                ((c) c0303n.f5655d).r(new C0302m4(c0373y42.f5788d, 3), new c(this, boolValueOf, g32, c0373y42));
                break;
            case 2:
                C0373y4 c0373y43 = (C0373y4) y3;
                ((c) this.f5716e.f5655d).r(new C0302m4(c0373y43.f5788d, 3), new C0377z2(this, this, c0373y43, 7));
                break;
            default:
                C0302m4 c0302m4 = new C0302m4(((C0373y4) y3).f5788d, 1);
                c cVar = (c) this.f5716e.f5655d;
                U u5 = new U(this, this, 4);
                cVar.getClass();
                V3 v32 = (V3) cVar.f1138d;
                AbstractC0332s.l(v32.j("/deleteAccount", (String) cVar.f1142i), c0302m4, u5, Void.class, (C0230a4) v32.f5455b);
                break;
        }
    }
}
