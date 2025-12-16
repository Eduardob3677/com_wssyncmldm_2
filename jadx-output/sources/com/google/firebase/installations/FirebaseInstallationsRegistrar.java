package com.google.firebase.installations;

import b2.c;
import b2.g;
import b2.l;
import com.idm.fotaagent.enabler.ui.whatsnew.a;
import i2.b;
import java.util.Arrays;
import java.util.List;
import l2.C0644c;
import l2.d;
import o3.AbstractC0729f;
import s2.C0836b;

/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements g {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d lambda$getComponents$0(b2.d dVar) {
        return new C0644c((W1.g) dVar.a(W1.g.class), dVar.b(C0836b.class), dVar.b(b.class));
    }

    @Override // b2.g
    public List<c> getComponents() {
        b2.b bVarA = c.a(d.class);
        bVarA.a(new l(1, 0, W1.g.class));
        bVarA.a(new l(0, 1, b.class));
        bVarA.a(new l(0, 1, C0836b.class));
        bVarA.f = new a(5);
        return Arrays.asList(bVarA.b(), AbstractC0729f.c("fire-installations", "17.0.0"));
    }
}
