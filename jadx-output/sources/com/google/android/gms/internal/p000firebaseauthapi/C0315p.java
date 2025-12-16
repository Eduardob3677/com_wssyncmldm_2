package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0315p {
    public static final void a(Object obj, Object obj2) {
        C0309o c0309o = (C0309o) obj;
        f.F(obj2);
        if (c0309o.isEmpty()) {
            return;
        }
        Iterator it = c0309o.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }

    public static final boolean b(Object obj) {
        return !((C0309o) obj).f5664c;
    }

    public static final C0309o c(Object obj, Object obj2) {
        C0309o c0309oB = (C0309o) obj;
        C0309o c0309o = (C0309o) obj2;
        if (!c0309o.isEmpty()) {
            if (!c0309oB.f5664c) {
                c0309oB = c0309oB.b();
            }
            c0309oB.d();
            if (!c0309o.isEmpty()) {
                c0309oB.putAll(c0309o);
            }
        }
        return c0309oB;
    }
}
