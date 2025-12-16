package com.google.firebase.messaging;

import java.util.Arrays;
import java.util.List;
import o3.AbstractC0729f;
import s2.C0836b;

/* loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements b2.g {
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(b2.d dVar) {
        W1.g gVar = (W1.g) dVar.a(W1.g.class);
        B.f.F(dVar.a(j2.a.class));
        return new FirebaseMessaging(gVar, dVar.b(C0836b.class), dVar.b(i2.b.class), (l2.d) dVar.a(l2.d.class), (I0.d) dVar.a(I0.d.class), (h2.b) dVar.a(h2.b.class));
    }

    @Override // b2.g
    public List<b2.c> getComponents() {
        b2.b bVarA = b2.c.a(FirebaseMessaging.class);
        bVarA.a(new b2.l(1, 0, W1.g.class));
        bVarA.a(new b2.l(0, 0, j2.a.class));
        bVarA.a(new b2.l(0, 1, C0836b.class));
        bVarA.a(new b2.l(0, 1, i2.b.class));
        bVarA.a(new b2.l(0, 0, I0.d.class));
        bVarA.a(new b2.l(1, 0, l2.d.class));
        bVarA.a(new b2.l(1, 0, h2.b.class));
        bVarA.f = e.f;
        if (bVarA.f5111a != 0) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        bVarA.f5111a = 1;
        return Arrays.asList(bVarA.b(), AbstractC0729f.c("fire-fcm", "23.0.0"));
    }
}
