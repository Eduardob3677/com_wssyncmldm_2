package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.regex.Matcher;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0231b extends C {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0303n f5518h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0231b(C0303n c0303n, CharSequence charSequence, C0303n c0303n2) {
        super(c0303n, charSequence);
        this.f5518h = c0303n2;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.C
    public final int a(int i5) {
        return ((Matcher) this.f5518h.f5655d).end();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.C
    public final int b(int i5) {
        C0303n c0303n = this.f5518h;
        if (((Matcher) c0303n.f5655d).find(i5)) {
            return ((Matcher) c0303n.f5655d).start();
        }
        return -1;
    }
}
