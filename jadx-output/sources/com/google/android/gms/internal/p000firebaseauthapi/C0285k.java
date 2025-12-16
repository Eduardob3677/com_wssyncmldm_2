package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0285k extends AbstractC0291l {
    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final List a(long j3, Object obj) {
        InterfaceC0237c interfaceC0237c = (InterfaceC0237c) L.f5414c.m(j3, obj);
        if (((V4) interfaceC0237c).f5478c) {
            return interfaceC0237c;
        }
        int size = interfaceC0237c.size();
        InterfaceC0237c interfaceC0237cD = interfaceC0237c.d(size == 0 ? 10 : size + size);
        L.r(j3, obj, interfaceC0237cD);
        return interfaceC0237cD;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final void b(long j3, Object obj) {
        ((V4) ((InterfaceC0237c) L.f5414c.m(j3, obj))).f5478c = false;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final void c(long j3, Object obj, Object obj2) {
        K k5 = L.f5414c;
        InterfaceC0237c interfaceC0237cD = (InterfaceC0237c) k5.m(j3, obj);
        InterfaceC0237c interfaceC0237c = (InterfaceC0237c) k5.m(j3, obj2);
        int size = interfaceC0237cD.size();
        int size2 = interfaceC0237c.size();
        if (size > 0 && size2 > 0) {
            if (!((V4) interfaceC0237cD).f5478c) {
                interfaceC0237cD = interfaceC0237cD.d(size2 + size);
            }
            interfaceC0237cD.addAll(interfaceC0237c);
        }
        if (size > 0) {
            interfaceC0237c = interfaceC0237cD;
        }
        L.r(j3, obj, interfaceC0237c);
    }
}
