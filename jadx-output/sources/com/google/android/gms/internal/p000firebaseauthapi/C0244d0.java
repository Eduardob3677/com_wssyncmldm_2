package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Arrays;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0244d0 implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f5548c;

    public /* synthetic */ C0244d0(byte[] bArr) {
        this.f5548c = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        C0244d0 c0244d0 = (C0244d0) obj;
        byte[] bArr = this.f5548c;
        int length = bArr.length;
        int length2 = c0244d0.f5548c.length;
        if (length != length2) {
            return length - length2;
        }
        for (int i5 = 0; i5 < bArr.length; i5++) {
            byte b3 = bArr[i5];
            byte b5 = c0244d0.f5548c[i5];
            if (b3 != b5) {
                return b3 - b5;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0244d0) {
            return Arrays.equals(this.f5548c, ((C0244d0) obj).f5548c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5548c);
    }

    public final String toString() {
        return AbstractC0332s.j(this.f5548c);
    }
}
