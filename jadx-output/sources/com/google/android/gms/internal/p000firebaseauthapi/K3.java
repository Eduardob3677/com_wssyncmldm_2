package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import J3.c;
import Y1.j;
import android.util.Log;
import b1.C0199e;
import c1.AbstractC0213D;
import com.google.firebase.auth.api.fallback.service.FirebaseAuthFallbackService;
import com.google.firebase.messaging.p;
import java.io.IOException;

/* loaded from: classes.dex */
public final class K3 extends S3 {

    /* renamed from: d, reason: collision with root package name */
    public static final d f5402d = new d("FirebaseAuth", "FirebaseAuthFallback:");

    /* renamed from: b, reason: collision with root package name */
    public final C0303n f5403b;

    /* renamed from: c, reason: collision with root package name */
    public final C0290k4 f5404c;

    public K3(FirebaseAuthFallbackService firebaseAuthFallbackService, String str) {
        super("com.google.firebase.auth.api.internal.IFirebaseAuthService", 0);
        AbstractC0213D.e(firebaseAuthFallbackService);
        Z3 z32 = new Z3(Z3.a());
        AbstractC0213D.c(str);
        this.f5403b = new C0303n(11, new c(firebaseAuthFallbackService, str, z32));
        this.f5404c = new C0290k4(firebaseAuthFallbackService);
    }

    public static boolean q(long j3, boolean z4) {
        if (j3 > 0 && z4) {
            return true;
        }
        d dVar = f5402d;
        Log.w((String) dVar.f11b, dVar.f("App hash will not be appended to the request.", new Object[0]));
        return false;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void b(C0253e3 c0253e3, Q3 q32) {
        AbstractC0213D.e(c0253e3);
        Y1.d dVar = c0253e3.f5552c;
        AbstractC0213D.e(dVar);
        AbstractC0213D.e(q32);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        if (dVar.f2929g) {
            c0303n.h(dVar.f, new C0377z2(c0303n, dVar, g32, 1));
        } else {
            c0303n.i(new C0326q4(dVar, null), g32);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void g(T2 t2, Q3 q32) {
        AbstractC0213D.e(t2);
        String str = t2.f5468c;
        AbstractC0213D.c(str);
        N4 n42 = t2.f5469d;
        AbstractC0213D.e(n42);
        AbstractC0213D.e(q32);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        AbstractC0213D.c(str);
        c0303n.h(str, new C0377z2(c0303n, n42, g32, 4));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void j(C0247d3 c0247d3, Q3 q32) throws IOException {
        AbstractC0213D.e(c0247d3);
        String str = c0247d3.f5549c;
        AbstractC0213D.c(str);
        String str2 = c0247d3.f5550d;
        AbstractC0213D.c(str2);
        AbstractC0213D.e(q32);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        AbstractC0213D.c(str);
        AbstractC0213D.c(str2);
        C0314o4 c0314o4 = new C0314o4(3, str, str2, c0247d3.f5551e);
        C0325q3 c0325q3 = new C0325q3(c0303n, g32, 1);
        c cVar = (c) c0303n.f5655d;
        cVar.getClass();
        V3 v32 = (V3) cVar.f1138d;
        AbstractC0332s.l(v32.j("/verifyPassword", (String) cVar.f1142i), c0314o4, c0325q3, Q4.class, (C0230a4) v32.f5455b);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void k(S2 s22, Q3 q32) {
        AbstractC0213D.e(s22);
        String str = s22.f5465c;
        AbstractC0213D.c(str);
        String str2 = s22.f5466d;
        AbstractC0213D.c(str2);
        String str3 = s22.f5467e;
        AbstractC0213D.c(str3);
        AbstractC0213D.e(q32);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        AbstractC0213D.c(str);
        AbstractC0213D.c(str2);
        AbstractC0213D.c(str3);
        c0303n.h(str3, new p(c0303n, str, str2, g32));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void o(C0235b3 c0235b3, Q3 q32) throws IOException {
        AbstractC0213D.e(c0235b3);
        N4 n42 = c0235b3.f5519c;
        AbstractC0213D.e(n42);
        AbstractC0213D.e(q32);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        n42.f5448q = true;
        C0325q3 c0325q3 = new C0325q3(c0303n, g32, 14);
        c cVar = (c) c0303n.f5655d;
        cVar.getClass();
        V3 v32 = (V3) cVar.f1138d;
        AbstractC0332s.l(v32.j("/verifyAssertion", (String) cVar.f1142i), n42, c0325q3, O4.class, (C0230a4) v32.f5455b);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void r(Q2 q2, Q3 q32) throws IOException {
        AbstractC0213D.e(q2);
        AbstractC0213D.e(q32);
        String str = q2.f5462c;
        AbstractC0213D.c(str);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        AbstractC0213D.c(str);
        C0302m4 c0302m4 = new C0302m4(str, 2);
        C0325q3 c0325q3 = new C0325q3(g32, 6);
        c cVar = (c) c0303n.f5655d;
        V3 v32 = (V3) cVar.f;
        AbstractC0332s.l(v32.j("/token", (String) cVar.f1142i), c0302m4, c0325q3, C0373y4.class, (C0230a4) v32.f5455b);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void t(C0259f3 c0259f3, Q3 q32) throws IOException {
        AbstractC0213D.e(q32);
        AbstractC0213D.e(c0259f3);
        j jVar = c0259f3.f5560c;
        AbstractC0213D.e(jVar);
        C0199e c0199eB = AbstractC0332s.b(jVar);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        C0325q3 c0325q3 = new C0325q3(c0303n, g32, 9);
        c cVar = (c) c0303n.f5655d;
        cVar.getClass();
        V3 v32 = (V3) cVar.f1138d;
        AbstractC0332s.l(v32.j("/verifyPhoneNumber", (String) cVar.f1142i), c0199eB, c0325q3, R4.class, (C0230a4) v32.f5455b);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.U3
    public final void x(U2 u22, Q3 q32) {
        AbstractC0213D.e(q32);
        AbstractC0213D.e(u22);
        j jVar = u22.f5475d;
        AbstractC0213D.e(jVar);
        String str = u22.f5474c;
        AbstractC0213D.c(str);
        C0199e c0199eB = AbstractC0332s.b(jVar);
        G3 g32 = new G3(q32, f5402d);
        C0303n c0303n = this.f5403b;
        c0303n.getClass();
        AbstractC0213D.c(str);
        c0303n.h(str, new C0377z2(c0303n, c0199eB, g32, 3));
    }
}
