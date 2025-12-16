package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.u0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0345u0 implements Q {

    /* renamed from: b, reason: collision with root package name */
    public static final C0339t0 f5739b = new C0339t0(0);

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f5740a;

    public C0345u0(byte[] bArr) throws InvalidAlgorithmParameterException {
        D2.b(bArr.length);
        this.f5740a = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, ClassNotFoundException {
        AlgorithmParameterSpec ivParameterSpec;
        if (bArr.length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            ivParameterSpec = new GCMParameterSpec(128, bArr, 0, 12);
        } catch (ClassNotFoundException unused) {
            if (!AbstractC0332s.u()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            ivParameterSpec = new IvParameterSpec(bArr, 0, 12);
        }
        C0339t0 c0339t0 = f5739b;
        ((Cipher) c0339t0.get()).init(2, this.f5740a, ivParameterSpec);
        if (bArr2.length != 0) {
            ((Cipher) c0339t0.get()).updateAAD(bArr2);
        }
        return ((Cipher) c0339t0.get()).doFinal(bArr, 12, bArr.length - 12);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
