package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class B0 implements T {

    /* renamed from: a, reason: collision with root package name */
    public final U f5337a;

    public B0(U u5) {
        this.f5337a = u5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.T
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        U u5 = this.f5337a;
        if (length > 5) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 5);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 5, length);
            Iterator it = u5.f(bArrCopyOfRange).iterator();
            while (it.hasNext()) {
                try {
                    return ((T) ((C0238c0) it.next()).f5525a).a(bArrCopyOfRange2);
                } catch (GeneralSecurityException e5) {
                    Logger logger = C0.f5346a;
                    Level level = Level.INFO;
                    String strValueOf = String.valueOf(e5.toString());
                    logger.logp(level, "com.google.crypto.tink.hybrid.HybridDecryptWrapper$WrappedHybridDecrypt", "decrypt", strValueOf.length() != 0 ? "ciphertext prefix matches a key, but cannot decrypt: ".concat(strValueOf) : new String("ciphertext prefix matches a key, but cannot decrypt: "));
                }
            }
        }
        Iterator it2 = u5.f(AbstractC0332s.f5708a).iterator();
        while (it2.hasNext()) {
            try {
                return ((T) ((C0238c0) it2.next()).f5525a).a(bArr);
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
