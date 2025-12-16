package com.google.android.gms.internal.p000firebaseauthapi;

import android.util.Log;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class F0 {

    /* renamed from: a, reason: collision with root package name */
    public KeyStore f5369a;

    public F0() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            this.f5369a = keyStore;
        } catch (IOException | GeneralSecurityException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public final synchronized C0304n0 a(String str) {
        C0304n0 c0304n0;
        c0304n0 = new C0304n0(D2.a(str), this.f5369a);
        byte[] bArrA = C2.a(10);
        byte[] bArr = new byte[0];
        if (!Arrays.equals(bArrA, c0304n0.a(c0304n0.b(bArrA, bArr), bArr))) {
            throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
        }
        return c0304n0;
    }

    public final synchronized boolean b(String str) {
        String strA;
        strA = D2.a(str);
        try {
        } catch (NullPointerException unused) {
            Log.w("F0", "Keystore is temporarily unavailable, wait 20ms, reinitialize Keystore and try again.");
            try {
                Thread.sleep(20L);
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f5369a = keyStore;
                keyStore.load(null);
            } catch (IOException e5) {
                throw new GeneralSecurityException(e5);
            } catch (InterruptedException unused2) {
            }
            return this.f5369a.containsAlias(strA);
        }
        return this.f5369a.containsAlias(strA);
    }
}
