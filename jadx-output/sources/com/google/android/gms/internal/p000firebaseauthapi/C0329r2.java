package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.List;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.r2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0329r2 implements S {

    /* renamed from: c, reason: collision with root package name */
    public static final List f5702c = Arrays.asList(64);

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f5703d = new byte[16];

    /* renamed from: a, reason: collision with root package name */
    public final C0377z2 f5704a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5705b;

    public C0329r2(byte[] bArr) throws InvalidKeyException {
        int length = bArr.length;
        if (f5702c.contains(Integer.valueOf(length))) {
            int i5 = length >> 1;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i5);
            this.f5705b = Arrays.copyOfRange(bArr, i5, length);
            this.f5704a = new C0377z2(bArrCopyOfRange);
            return;
        }
        StringBuilder sb = new StringBuilder(59);
        sb.append("invalid key size: ");
        sb.append(length);
        sb.append(" bytes; key must have 64 bytes");
        throw new InvalidKeyException(sb.toString());
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.S
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrJ;
        int length = bArr.length;
        if (length < 16) {
            throw new GeneralSecurityException("Ciphertext too short.");
        }
        Cipher cipher = (Cipher) C0365x2.f5777e.a("AES/CTR/NoPadding");
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
        byte[] bArr3 = (byte[]) bArrCopyOfRange.clone();
        bArr3[8] = (byte) (bArr3[8] & 127);
        bArr3[12] = (byte) (bArr3[12] & 127);
        cipher.init(2, new SecretKeySpec(this.f5705b, "AES"), new IvParameterSpec(bArr3));
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 16, length);
        byte[] bArrDoFinal = cipher.doFinal(bArrCopyOfRange2);
        if (bArrCopyOfRange2.length == 0 && bArrDoFinal == null && AbstractC0332s.u()) {
            bArrDoFinal = new byte[0];
        }
        byte[][] bArr4 = {bArr2, bArrDoFinal};
        C0377z2 c0377z2 = this.f5704a;
        byte[] bArrA = c0377z2.a(16, f5703d);
        for (char c2 = 0; c2 <= 0; c2 = 1) {
            byte[] bArr5 = bArr4[0];
            if (bArr5 == null) {
                bArr5 = new byte[0];
            }
            bArrA = AbstractC0332s.J(AbstractC0332s.w(bArrA), c0377z2.a(16, bArr5));
        }
        byte[] bArr6 = bArr4[1];
        int length2 = bArr6.length;
        if (length2 >= 16) {
            int length3 = bArrA.length;
            if (length2 < length3) {
                throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
            }
            int i5 = length2 - length3;
            bArrJ = Arrays.copyOf(bArr6, length2);
            for (int i6 = 0; i6 < bArrA.length; i6++) {
                int i7 = i5 + i6;
                bArrJ[i7] = (byte) (bArrJ[i7] ^ bArrA[i6]);
            }
        } else {
            int length4 = bArr6.length;
            if (length4 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr6, 16);
            bArrCopyOf[length4] = -128;
            bArrJ = AbstractC0332s.J(bArrCopyOf, AbstractC0332s.w(bArrA));
        }
        if (AbstractC0332s.v(bArrCopyOfRange, c0377z2.a(16, bArrJ))) {
            return bArrDoFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }
}
