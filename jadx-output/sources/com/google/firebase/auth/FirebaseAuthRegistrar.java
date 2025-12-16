package com.google.firebase.auth;

import Y1.v;
import a2.InterfaceC0105a;
import a2.r;
import b2.c;
import b2.d;
import b2.g;
import b2.l;
import i3.x;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import o3.AbstractC0729f;

/* loaded from: classes.dex */
public class FirebaseAuthRegistrar implements g {
    public static FirebaseAuth lambda$getComponents$0(d dVar) {
        return new r((W1.g) dVar.a(W1.g.class));
    }

    @Override // b2.g
    public List<c> getComponents() {
        Class[] clsArr = {InterfaceC0105a.class};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(FirebaseAuth.class);
        for (Class cls : clsArr) {
            x.q("Null interface", cls);
        }
        Collections.addAll(hashSet, clsArr);
        l lVar = new l(1, 0, W1.g.class);
        if (!(!hashSet.contains(lVar.f5134a))) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        hashSet2.add(lVar);
        return Arrays.asList(new c(new HashSet(hashSet), new HashSet(hashSet2), 2, 0, v.f2962c, hashSet3), AbstractC0729f.c("fire-auth", "21.0.1"));
    }
}
