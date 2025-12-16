package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.q2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0324q2 implements Q {

    /* renamed from: b, reason: collision with root package name */
    public static final C0339t0 f5695b = new C0339t0(4);

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f5696a;

    public C0324q2(byte[] bArr) throws InvalidAlgorithmParameterException {
        D2.b(bArr.length);
        this.f5696a = new SecretKeySpec(bArr, "AES");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(byte[] bArr, byte[] bArr2) throws IllegalAccessException, GeneralSecurityException, IllegalArgumentException {
        int i5;
        AlgorithmParameterSpec ivParameterSpec;
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (AbstractC0332s.u()) {
            try {
                i5 = Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
                i5 = -1;
            }
            ivParameterSpec = i5 <= 19 ? new IvParameterSpec(bArr, 0, 12) : new GCMParameterSpec(128, bArr, 0, 12);
        }
        C0339t0 c0339t0 = f5695b;
        ((Cipher) c0339t0.get()).init(2, this.f5696a, ivParameterSpec);
        if (bArr2.length != 0) {
            ((Cipher) c0339t0.get()).updateAAD(bArr2);
        }
        return ((Cipher) c0339t0.get()).doFinal(bArr, 12, length - 12);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
