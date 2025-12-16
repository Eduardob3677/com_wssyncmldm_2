package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import J3.c;
import Y1.d;
import Y1.o;
import a2.m;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import b1.C0199e;
import c1.AbstractC0213D;
import f1.AbstractC0420a;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0377z2 implements J0, InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5796c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5797d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f5798e;
    public final Object f;

    public C0377z2(G4 g42, C0355v4 c0355v4, G3 g32, C0373y4 c0373y4, InterfaceC0248d4 interfaceC0248d4) {
        this.f5796c = 2;
        this.f5797d = g42;
        this.f5798e = c0355v4;
        this.f = interfaceC0248d4;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.J0
    public byte[] a(int i5, byte[] bArr) throws BadPaddingException, IllegalBlockSizeException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrJ;
        if (i5 > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        Cipher cipher = (Cipher) C0365x2.f5777e.a("AES/ECB/NoPadding");
        cipher.init(1, (SecretKeySpec) this.f5797d);
        int length = bArr.length;
        int iMax = Math.max(1, (int) Math.ceil(length / 16.0d));
        if (iMax * 16 == length) {
            bArrJ = AbstractC0332s.M(bArr, (iMax - 1) * 16, 0, (byte[]) this.f5798e, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) * 16, length);
            int length2 = bArrCopyOfRange.length;
            if (length2 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[length2] = -128;
            bArrJ = AbstractC0332s.J(bArrCopyOf, (byte[]) this.f);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i6 = 0; i6 < iMax - 1; i6++) {
            bArrDoFinal = cipher.doFinal(AbstractC0332s.M(bArrDoFinal, 0, i6 * 16, bArr, 16));
        }
        return Arrays.copyOf(cipher.doFinal(AbstractC0332s.J(bArrJ, bArrDoFinal)), i5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        switch (this.f5796c) {
            case 1:
                ((G3) this.f5798e).b(AbstractC0420a.t0(str));
                break;
            case 2:
                ((InterfaceC0248d4) this.f).b(str);
                break;
            case 3:
                ((G3) this.f5798e).b(AbstractC0420a.t0(str));
                break;
            case 4:
                ((G3) this.f5798e).b(AbstractC0420a.t0(str));
                break;
            case 5:
                ((C0342t3) this.f).f5735e.b(AbstractC0420a.t0(str));
                break;
            case 6:
                ((G3) this.f5798e).b(AbstractC0420a.t0(str));
                break;
            case 7:
                ((InterfaceC0248d4) this.f5797d).b(str);
                break;
            default:
                ((G3) this.f5798e).b(AbstractC0420a.t0(str));
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void k(Y3 y3) throws IOException {
        switch (this.f5796c) {
            case 1:
                ((C0303n) this.f).i(new C0326q4((d) this.f5797d, ((C0373y4) y3).f5788d), (G3) this.f5798e);
                return;
            case 2:
                f.B(y3);
                G4 g42 = (G4) this.f5797d;
                g42.getClass();
                AbstractC0213D.c("EMAIL");
                M4 m42 = (M4) g42.f5383j;
                boolean zContains = m42.f5433d.contains("EMAIL");
                C0355v4 c0355v4 = (C0355v4) this.f5798e;
                if (zContains) {
                    c0355v4.f5754d = null;
                } else {
                    String str = (String) g42.f5379e;
                    if (str != null) {
                        c0355v4.f5754d = str;
                    }
                }
                AbstractC0213D.c("DISPLAY_NAME");
                if (m42.f5433d.contains("DISPLAY_NAME")) {
                    c0355v4.f = null;
                } else {
                    String str2 = (String) g42.f5378d;
                    if (str2 != null) {
                        c0355v4.f = str2;
                    }
                }
                AbstractC0213D.c("PHOTO_URL");
                if (m42.f5433d.contains("PHOTO_URL")) {
                    c0355v4.f5756g = null;
                } else {
                    String str3 = (String) g42.f5381h;
                    if (str3 != null) {
                        c0355v4.f5756g = str3;
                    }
                }
                if (TextUtils.isEmpty((String) g42.f)) {
                    throw null;
                }
                byte[] bytes = "redacted".getBytes();
                String strEncodeToString = bytes == null ? null : Base64.encodeToString(bytes, 0);
                c0355v4.getClass();
                AbstractC0213D.c(strEncodeToString);
                c0355v4.f5758i = strEncodeToString;
                throw null;
            case 3:
                String str4 = ((C0373y4) y3).f5788d;
                C0199e c0199e = (C0199e) this.f5797d;
                c0199e.f5077h = str4;
                c cVar = (c) ((C0303n) this.f).f5655d;
                C0330r3 c0330r3 = new C0330r3(this, this);
                cVar.getClass();
                V3 v32 = (V3) cVar.f1138d;
                AbstractC0332s.l(v32.j("/verifyPhoneNumber", (String) cVar.f1142i), c0199e, c0330r3, R4.class, (C0230a4) v32.f5455b);
                return;
            case 4:
                N4 n42 = (N4) this.f5797d;
                n42.f5448q = true;
                String str5 = ((C0373y4) y3).f5788d;
                AbstractC0213D.c(str5);
                n42.f5437d = str5;
                c cVar2 = (c) ((C0303n) this.f).f5655d;
                U u5 = new U(this, this, 3);
                cVar2.getClass();
                V3 v33 = (V3) cVar2.f1138d;
                AbstractC0332s.l(v33.j("/verifyAssertion", (String) cVar2.f1142i), n42, u5, O4.class, (C0230a4) v33.f5455b);
                return;
            case 5:
                List list = ((C0349u4) y3).f5745c.f5769c;
                InterfaceC0248d4 interfaceC0248d4 = (InterfaceC0248d4) this.f5797d;
                if (list == null || list.isEmpty()) {
                    interfaceC0248d4.b("No users.");
                    return;
                }
                C0355v4 c0355v42 = (C0355v4) list.get(0);
                G4 g43 = new G4();
                C0373y4 c0373y4 = (C0373y4) this.f5798e;
                g43.d(c0373y4.f5788d);
                C0342t3 c0342t3 = (C0342t3) this.f;
                String str6 = c0342t3.f5734d;
                AbstractC0213D.c(str6);
                ((M4) g43.f5384k).f5433d.add(str6);
                G3 g32 = c0342t3.f5735e;
                AbstractC0213D.e(g32);
                AbstractC0213D.e(c0373y4);
                AbstractC0213D.e(c0355v42);
                AbstractC0213D.e(interfaceC0248d4);
                c cVar3 = (c) c0342t3.f.f5655d;
                C0377z2 c0377z2 = new C0377z2(g43, c0355v42, g32, c0373y4, interfaceC0248d4);
                cVar3.getClass();
                V3 v34 = (V3) cVar3.f1138d;
                AbstractC0332s.l(v34.j("/setAccountInfo", (String) cVar3.f1142i), g43, c0377z2, H4.class, (C0230a4) v34.f5455b);
                return;
            case 6:
                String str7 = ((C0373y4) y3).f5788d;
                m mVar = (m) this.f5797d;
                mVar.f3060d = str7;
                c cVar4 = (c) ((C0303n) this.f).f5655d;
                C0303n c0303n = new C0303n(10, this);
                cVar4.getClass();
                V3 v35 = (V3) cVar4.f1139e;
                AbstractC0332s.l(v35.j("/mfaEnrollment:finalize", (String) cVar4.f1142i), mVar, c0303n, AbstractC0337s4.class, (C0230a4) v35.f5455b);
                return;
            case 7:
                List list2 = ((C0349u4) y3).f5745c.f5769c;
                if (list2 == null || list2.isEmpty()) {
                    ((InterfaceC0248d4) this.f5797d).b("No users");
                    return;
                }
                G3 g33 = ((C0336s3) this.f).f5715d;
                C0355v4 c0355v43 = (C0355v4) list2.get(0);
                C0373y4 c0373y42 = (C0373y4) this.f5798e;
                g33.getClass();
                try {
                    g33.f5375a.c(c0373y42, c0355v43);
                    return;
                } catch (RemoteException e5) {
                    g33.f5376b.d("RemoteException when sending get token and account info user response", e5, new Object[0]);
                    return;
                }
            default:
                C0373y4 c0373y43 = (C0373y4) y3;
                G4 g44 = new G4();
                g44.d(c0373y43.f5788d);
                o oVar = (o) this.f5797d;
                boolean z4 = oVar.f2948e;
                M4 m43 = (M4) g44.f5383j;
                if (z4 || oVar.f2946c != null) {
                    String str8 = oVar.f2946c;
                    if (str8 == null) {
                        m43.f5433d.add("DISPLAY_NAME");
                    } else {
                        g44.f5378d = str8;
                    }
                }
                if (oVar.f || oVar.f2949g != null) {
                    String str9 = oVar.f2947d;
                    if (str9 == null) {
                        m43.f5433d.add("PHOTO_URL");
                    } else {
                        g44.f5381h = str9;
                    }
                }
                C0303n.s((C0303n) this.f, (G3) this.f5798e, this, c0373y43, g44);
                return;
        }
    }

    public /* synthetic */ C0377z2(Object obj, Object obj2, Object obj3, int i5) {
        this.f5796c = i5;
        this.f = obj;
        this.f5797d = obj2;
        this.f5798e = obj3;
    }

    public C0377z2(byte[] bArr) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f5796c = 0;
        D2.b(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f5797d = secretKeySpec;
        Cipher cipher = (Cipher) C0365x2.f5777e.a("AES/ECB/NoPadding");
        cipher.init(1, secretKeySpec);
        byte[] bArrW = AbstractC0332s.w(cipher.doFinal(new byte[16]));
        this.f5798e = bArrW;
        this.f = AbstractC0332s.w(bArrW);
    }
}
