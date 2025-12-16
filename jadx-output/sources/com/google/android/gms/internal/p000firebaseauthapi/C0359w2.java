package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.w2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0359w2 implements Q {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0371y2 f5766a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0232b0 f5767b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5768c;

    public C0359w2(InterfaceC0371y2 interfaceC0371y2, InterfaceC0232b0 interfaceC0232b0, int i5) {
        this.f5766a = interfaceC0371y2;
        this.f5767b = interfaceC0232b0;
        this.f5768c = i5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i5 = this.f5768c;
        if (length < i5) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int i6 = length - i5;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i6);
        this.f5767b.a(Arrays.copyOfRange(bArr, i6, length), AbstractC0332s.C(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8)));
        return this.f5766a.a(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
