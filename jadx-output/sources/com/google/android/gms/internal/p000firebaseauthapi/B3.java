package com.google.android.gms.internal.p000firebaseauthapi;

import R3.C0091m;
import Y1.d;
import a2.l;
import a2.s;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.p;

/* loaded from: classes.dex */
public final class B3 extends AbstractC0242c4 {
    public final /* synthetic */ int n;

    /* renamed from: o, reason: collision with root package name */
    public final C0253e3 f5340o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B3(d dVar, int i5) {
        super(2);
        this.n = i5;
        switch (i5) {
            case 1:
                super(2);
                this.f5340o = new C0253e3(dVar);
                break;
            default:
                this.f5340o = new C0253e3(dVar);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final C0091m a() {
        switch (this.n) {
            case 0:
                C0091m c0091mC = C0091m.c();
                c0091mC.f2404b = new C0303n(18, this);
                return c0091mC.b();
            default:
                C0091m c0091mC2 = C0091m.c();
                c0091mC2.f2404b = new C0303n(23, this);
                return c0091mC2.b();
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final String b() {
        switch (this.n) {
            case 0:
                return "reauthenticateWithEmailLinkWithData";
            default:
                return "sendSignInLinkToEmail";
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final void c() {
        switch (this.n) {
            case 0:
                s sVarO = p.O(this.f5533c, this.f5537h);
                if (!this.f5534d.f3079d.f3071c.equalsIgnoreCase(sVarO.f3079d.f3071c)) {
                    f(new Status(17024, null));
                    break;
                } else {
                    ((l) this.f5535e).a(this.f5536g, sVarO);
                    g(new a2.p(sVarO));
                    break;
                }
            default:
                s sVarO2 = p.O(this.f5533c, this.f5537h);
                ((l) this.f5535e).a(this.f5536g, sVarO2);
                g(new a2.p(sVarO2));
                break;
        }
    }
}
