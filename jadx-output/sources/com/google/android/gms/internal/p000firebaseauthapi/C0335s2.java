package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.s2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0335s2 extends AbstractC0341t2 {
    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0341t2
    public final int b() {
        return 12;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0341t2
    public final int[] c(int[] iArr, int i5) {
        int length = iArr.length;
        if (length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
        }
        int[] iArr2 = new int[16];
        int[] iArr3 = this.f5731a;
        int[] iArr4 = AbstractC0341t2.f5730c;
        System.arraycopy(iArr4, 0, iArr2, 0, iArr4.length);
        System.arraycopy(iArr3, 0, iArr2, iArr4.length, 8);
        iArr2[12] = i5;
        System.arraycopy(iArr, 0, iArr2, 13, 3);
        return iArr2;
    }
}
