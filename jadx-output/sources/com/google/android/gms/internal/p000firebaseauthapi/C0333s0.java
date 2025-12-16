package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.s0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0333s0 implements Q {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f5711c = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    public final U1 f5712a;

    /* renamed from: b, reason: collision with root package name */
    public final Q f5713b;

    public C0333s0(U1 u12, C0304n0 c0304n0) {
        this.f5712a = u12;
        this.f5713b = c0304n0;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int i5 = byteBufferWrap.getInt();
            if (i5 <= 0 || i5 > bArr.length - 4) {
                throw new GeneralSecurityException("invalid ciphertext");
            }
            byte[] bArr3 = new byte[i5];
            byteBufferWrap.get(bArr3, 0, i5);
            byte[] bArr4 = new byte[byteBufferWrap.remaining()];
            byteBufferWrap.get(bArr4, 0, byteBufferWrap.remaining());
            return ((Q) AbstractC0280j0.d(this.f5712a.q(), this.f5713b.a(bArr3, f5711c))).a(bArr4, bArr2);
        } catch (IndexOutOfBoundsException | NegativeArraySizeException | BufferUnderflowException e5) {
            throw new GeneralSecurityException("invalid ciphertext", e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
