package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import javax.crypto.AEADBadTagException;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.u2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0347u2 implements Q {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0341t2 f5741a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0341t2 f5742b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5743c;

    public C0347u2(byte[] bArr, int i5) {
        this.f5743c = i5;
        this.f5741a = c(1, bArr);
        this.f5742b = c(0, bArr);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int iRemaining = byteBufferWrap.remaining();
        AbstractC0341t2 abstractC0341t2 = this.f5741a;
        if (iRemaining < abstractC0341t2.b() + 16) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int iPosition = byteBufferWrap.position();
        byte[] bArr3 = new byte[16];
        byteBufferWrap.position(byteBufferWrap.limit() - 16);
        byteBufferWrap.get(bArr3);
        byteBufferWrap.position(iPosition);
        byteBufferWrap.limit(byteBufferWrap.limit() - 16);
        byte[] bArr4 = new byte[abstractC0341t2.b()];
        byteBufferWrap.get(bArr4);
        try {
            ByteBuffer byteBufferD = this.f5742b.d(0, bArr4);
            byte[] bArr5 = new byte[32];
            byteBufferD.get(bArr5);
            int length = bArr2.length;
            int i5 = length & 15;
            int i6 = i5 == 0 ? length : (length + 16) - i5;
            int iRemaining2 = byteBufferWrap.remaining();
            int i7 = iRemaining2 % 16;
            int i8 = (i7 == 0 ? iRemaining2 : (iRemaining2 + 16) - i7) + i6;
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(i8 + 16).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put(bArr2);
            byteBufferOrder.position(i6);
            byteBufferOrder.put(byteBufferWrap);
            byteBufferOrder.position(i8);
            byteBufferOrder.putLong(length);
            byteBufferOrder.putLong(iRemaining2);
            if (!AbstractC0332s.v(AbstractC0332s.n(bArr5, byteBufferOrder.array()), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBufferWrap.position(iPosition);
            return abstractC0341t2.g(byteBufferWrap);
        } catch (GeneralSecurityException e5) {
            throw new AEADBadTagException(e5.toString());
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw null;
    }

    public final AbstractC0341t2 c(int i5, byte[] bArr) {
        switch (this.f5743c) {
            case 0:
                return new C0335s2(bArr, i5);
            default:
                return new E2(bArr, i5);
        }
    }
}
