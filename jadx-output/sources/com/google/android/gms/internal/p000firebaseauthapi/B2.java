package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class B2 implements InterfaceC0232b0 {

    /* renamed from: a, reason: collision with root package name */
    public final J0 f5338a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5339b;

    public B2(J0 j02, int i5) throws InvalidAlgorithmParameterException {
        this.f5338a = j02;
        this.f5339b = i5;
        if (i5 < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        j02.a(i5, new byte[0]);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0232b0
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!AbstractC0332s.v(this.f5338a.a(this.f5339b, bArr2), bArr)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }
}
