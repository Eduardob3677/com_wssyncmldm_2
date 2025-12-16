package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.r3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0330r3 implements InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5706c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0248d4 f5707d;

    public C0330r3(C0377z2 c0377z2, InterfaceC0248d4 interfaceC0248d4) {
        this.f5707d = interfaceC0248d4;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void b(String str) {
        int i5 = this.f5706c;
        InterfaceC0248d4 interfaceC0248d4 = this.f5707d;
        switch (i5) {
            case 0:
                interfaceC0248d4.b(str);
                break;
            default:
                interfaceC0248d4.b(str);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void k(Y3 y3) {
        switch (this.f5706c) {
            case 0:
                f.B(y3);
                throw null;
            default:
                this.f5707d.k((C0373y4) y3);
                return;
        }
    }

    public C0330r3(InterfaceC0248d4 interfaceC0248d4) {
        this.f5707d = interfaceC0248d4;
    }
}
