package com.google.android.gms.internal.p000firebaseauthapi;

import android.util.Log;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.ProviderException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.n0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0304n0 implements Q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5656a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5657b;

    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, InterruptedException {
        Iterator it;
        byte[] bArrA;
        switch (this.f5656a) {
            case 0:
                int length = bArr.length;
                U u5 = (U) this.f5657b;
                if (length <= 5) {
                    it = u5.f(AbstractC0332s.f5708a).iterator();
                    while (it.hasNext()) {
                    }
                    throw new GeneralSecurityException("decryption failed");
                }
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 5);
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 5, length);
                Iterator it2 = u5.f(bArrCopyOfRange).iterator();
                while (it2.hasNext()) {
                    try {
                        bArrA = ((Q) ((C0238c0) it2.next()).f5525a).a(bArrCopyOfRange2, bArr2);
                    } catch (GeneralSecurityException e5) {
                        Logger logger = C0310o0.f5665a;
                        Level level = Level.INFO;
                        String strValueOf = String.valueOf(e5.toString());
                        logger.logp(level, "com.google.crypto.tink.aead.AeadWrapper$WrappedAead", "decrypt", strValueOf.length() != 0 ? "ciphertext prefix matches a key, but cannot decrypt: ".concat(strValueOf) : new String("ciphertext prefix matches a key, but cannot decrypt: "));
                    }
                }
                it = u5.f(AbstractC0332s.f5708a).iterator();
                while (it.hasNext()) {
                    try {
                        bArrA = ((Q) ((C0238c0) it.next()).f5525a).a(bArr, bArr2);
                    } catch (GeneralSecurityException unused) {
                    }
                }
                throw new GeneralSecurityException("decryption failed");
                return bArrA;
            default:
                try {
                    return c(bArr, bArr2);
                } catch (GeneralSecurityException | ProviderException e6) {
                    Log.w("n0", "encountered a potentially transient KeyStore error, will wait and retry", e6);
                    try {
                        Thread.sleep((int) (Math.random() * 100.0d));
                    } catch (InterruptedException unused2) {
                    }
                    return this.c(bArr, bArr2);
                }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) throws InterruptedException {
        switch (this.f5656a) {
            case 0:
                throw null;
            default:
                try {
                    return d(bArr, bArr2);
                } catch (GeneralSecurityException | ProviderException e5) {
                    Log.w("n0", "encountered a potentially transient KeyStore error, will wait and retry", e5);
                    try {
                        Thread.sleep((int) (Math.random() * 100.0d));
                    } catch (InterruptedException unused) {
                    }
                    return this.d(bArr, bArr2);
                }
        }
    }

    public byte[] c(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr, 0, 12);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, (SecretKey) this.f5657b, gCMParameterSpec);
        cipher.updateAAD(bArr2);
        return cipher.doFinal(bArr, 12, length - 12);
    }

    public byte[] d(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[length + 28];
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, (SecretKey) this.f5657b);
        cipher.updateAAD(bArr2);
        cipher.doFinal(bArr, 0, length, bArr3, 12);
        System.arraycopy(cipher.getIV(), 0, bArr3, 0, 12);
        return bArr3;
    }

    public C0304n0(String str, KeyStore keyStore) throws InvalidKeyException {
        SecretKey secretKey = (SecretKey) keyStore.getKey(str, null);
        this.f5657b = secretKey;
        if (secretKey == null) {
            String strValueOf = String.valueOf(str);
            throw new InvalidKeyException(strValueOf.length() != 0 ? "Keystore cannot load the key with ID: ".concat(strValueOf) : new String("Keystore cannot load the key with ID: "));
        }
    }
}
