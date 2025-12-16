package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.Q0;

/* loaded from: classes.dex */
public final class H0 implements InterfaceC0232b0 {

    /* renamed from: a, reason: collision with root package name */
    public final U f5386a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5387b = {0};

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0232b0
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length <= 5) {
            throw new GeneralSecurityException("tag too short");
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, length);
        U u5 = this.f5386a;
        for (C0238c0 c0238c0 : u5.f(bArrCopyOf)) {
            try {
                boolean zB = Q0.b(c0238c0.f5528d, 3);
                Object obj = c0238c0.f5525a;
                if (zB) {
                    ((InterfaceC0232b0) obj).a(bArrCopyOfRange, AbstractC0332s.C(bArr2, this.f5387b));
                    return;
                } else {
                    ((InterfaceC0232b0) obj).a(bArrCopyOfRange, bArr2);
                    return;
                }
            } catch (GeneralSecurityException e5) {
                Logger logger = I0.f5389a;
                Level level = Level.INFO;
                String strValueOf = String.valueOf(e5);
                logger.logp(level, "com.google.crypto.tink.mac.MacWrapper$WrappedMac", "verifyMac", f.w(new StringBuilder(strValueOf.length() + 45), "tag prefix matches a key, but cannot verify: ", strValueOf));
            }
        }
        Iterator it = u5.f(AbstractC0332s.f5708a).iterator();
        while (it.hasNext()) {
            try {
                ((InterfaceC0232b0) ((C0238c0) it.next()).f5525a).a(bArr, bArr2);
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("invalid MAC");
    }
}
