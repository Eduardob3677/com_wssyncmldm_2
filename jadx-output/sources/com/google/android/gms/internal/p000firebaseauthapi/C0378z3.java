package com.google.android.gms.internal.p000firebaseauthapi;

import R3.C0091m;
import Y1.d;
import a2.l;
import a2.s;
import c1.AbstractC0213D;
import com.google.firebase.messaging.p;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0378z3 extends AbstractC0242c4 {
    public final /* synthetic */ int n;

    /* renamed from: o, reason: collision with root package name */
    public final d f5799o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0378z3(d dVar, int i5) {
        super(2);
        this.n = i5;
        switch (i5) {
            case 1:
                super(2);
                this.f5799o = dVar;
                break;
            default:
                this.f5799o = dVar;
                AbstractC0213D.d(dVar.f2926c, "email cannot be null");
                AbstractC0213D.d(dVar.f2927d, "password cannot be null");
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final C0091m a() {
        switch (this.n) {
            case 0:
                C0091m c0091mC = C0091m.c();
                c0091mC.f2404b = new C0303n(13, this);
                return c0091mC.b();
            default:
                C0091m c0091mC2 = C0091m.c();
                c0091mC2.f2404b = new C0303n(16, this);
                return c0091mC2.b();
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final String b() {
        switch (this.n) {
        }
        return "linkEmailAuthCredential";
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4
    public final void c() {
        switch (this.n) {
            case 0:
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
}
