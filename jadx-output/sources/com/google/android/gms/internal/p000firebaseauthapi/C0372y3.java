package com.google.android.gms.internal.p000firebaseauthapi;

import L2.b;
import R3.C0091m;
import Y1.c;
import Y1.j;
import a2.AbstractC0108d;
import a2.l;
import a2.s;
import android.text.TextUtils;
import c1.AbstractC0213D;
import com.google.firebase.messaging.p;
import d1.AbstractC0387a;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.y3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0372y3 extends AbstractC0242c4 {
    public final /* synthetic */ int n = 1;

    /* renamed from: o, reason: collision with root package name */
    public final AbstractC0387a f5786o;

    public C0372y3(c cVar) {
        super(2);
        this.f5786o = b.Q(cVar, null);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final C0091m a() {
        switch (this.n) {
            case 0:
                C0091m c0091mC = C0091m.c();
                c0091mC.f2404b = new C0303n(12, this);
                return c0091mC.b();
            case 1:
                C0091m c0091mC2 = C0091m.c();
                c0091mC2.f2404b = new C0303n(14, this);
                return c0091mC2.b();
            default:
                C0091m c0091mC3 = C0091m.c();
                c0091mC3.f2404b = new C0303n(15, this);
                return c0091mC3.b();
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final String b() {
        switch (this.n) {
            case 0:
                return "getAccessToken";
            case 1:
                return "linkFederatedCredential";
            default:
                return "linkPhoneAuthCredential";
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final void c() {
        switch (this.n) {
            case 0:
                if (TextUtils.isEmpty(this.f5536g.f5787c)) {
                    C0373y4 c0373y4 = this.f5536g;
                    String str = ((Q2) this.f5786o).f5462c;
                    c0373y4.getClass();
                    AbstractC0213D.c(str);
                    c0373y4.f5787c = str;
                }
                ((l) this.f5535e).a(this.f5536g, this.f5534d);
                g(AbstractC0108d.a(this.f5536g.f5788d));
                break;
            case 1:
                s sVarO = p.O(this.f5533c, this.f5537h);
                ((l) this.f5535e).a(this.f5536g, sVarO);
                g(new a2.p(sVarO));
                break;
            default:
                s sVarO2 = p.O(this.f5533c, this.f5537h);
                ((l) this.f5535e).a(this.f5536g, sVarO2);
                g(new a2.p(sVarO2));
                break;
        }
    }

    public C0372y3(j jVar) {
        super(2);
        this.f5786o = jVar;
    }

    public C0372y3(String str) {
        super(1);
        AbstractC0213D.d(str, "refresh token cannot be null");
        this.f5786o = new Q2(str);
    }
}
