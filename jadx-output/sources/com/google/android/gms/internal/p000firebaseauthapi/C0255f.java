package com.google.android.gms.internal.p000firebaseauthapi;

import java.io.IOException;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0255f extends IOException {
    public static C0249e a() {
        return new C0249e("Protocol message tag had invalid wire type.");
    }

    public static C0255f b() {
        return new C0255f("Protocol message had invalid UTF-8.");
    }

    public static C0255f c() {
        return new C0255f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static C0255f d() {
        return new C0255f("Failed to parse the message.");
    }

    public static C0255f e() {
        return new C0255f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
