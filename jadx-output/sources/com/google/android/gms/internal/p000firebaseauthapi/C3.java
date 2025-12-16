package com.google.android.gms.internal.p000firebaseauthapi;

import R3.C0091m;
import a2.l;
import a2.s;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.p;

/* loaded from: classes.dex */
public final class C3 extends AbstractC0242c4 {
    public final /* synthetic */ int n;

    /* renamed from: o, reason: collision with root package name */
    public final C0247d3 f5348o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3(int i5, String str, String str2, String str3) {
        super(2);
        this.n = i5;
        switch (i5) {
            case 1:
                super(2);
                AbstractC0213D.d(str, "email cannot be null or empty");
                AbstractC0213D.d(str2, "password cannot be null or empty");
                this.f5348o = new C0247d3(str, str2, str3);
                break;
            default:
                AbstractC0213D.d(str, "email cannot be null or empty");
                AbstractC0213D.d(str2, "password cannot be null or empty");
                this.f5348o = new C0247d3(str, str2, str3);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final C0091m a() {
        switch (this.n) {
            case 0:
                C0091m c0091mC = C0091m.c();
                c0091mC.f2404b = new C0303n(19, this);
                return c0091mC.b();
            default:
                C0091m c0091mC2 = C0091m.c();
                c0091mC2.f2404b = new C0303n(22, this);
                return c0091mC2.b();
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final String b() {
        switch (this.n) {
            case 0:
                return "reauthenticateWithEmailPasswordWithData";
            default:
                return "signInWithEmailAndPassword";
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
