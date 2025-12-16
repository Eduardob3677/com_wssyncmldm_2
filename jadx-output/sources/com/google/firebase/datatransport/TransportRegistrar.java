package com.google.firebase.datatransport;

import I0.b;
import I0.d;
import J.r0;
import J0.a;
import L0.e;
import L0.j;
import L0.k;
import android.content.Context;
import b2.c;
import b2.g;
import b2.l;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class TransportRegistrar implements g {
    /* JADX INFO: Access modifiers changed from: private */
    public static d lambda$getComponents$0(b2.d dVar) {
        Set setSingleton;
        byte[] bytes;
        k.b((Context) dVar.a(Context.class));
        k kVarA = k.a();
        a aVar = a.f1030e;
        kVarA.getClass();
        if (aVar instanceof e) {
            aVar.getClass();
            setSingleton = Collections.unmodifiableSet(a.f1029d);
        } else {
            setSingleton = Collections.singleton(new b("proto"));
        }
        r0 r0VarA = L0.b.a();
        aVar.getClass();
        r0VarA.o("cct");
        String str = aVar.f1031a;
        String str2 = aVar.f1032b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8"));
        }
        r0VarA.f1007d = bytes;
        return new j(setSingleton, r0VarA.b(), kVarA);
    }

    @Override // b2.g
    public List<c> getComponents() {
        b2.b bVarA = c.a(d.class);
        bVarA.a(new l(1, 0, Context.class));
        bVarA.f = new E2.a(12);
        return Collections.singletonList(bVarA.b());
    }
}
