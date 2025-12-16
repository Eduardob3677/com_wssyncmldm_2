package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import D3.e;
import J3.c;
import Y1.d;
import Y1.j;
import a1.b;
import a2.s;
import android.content.Context;
import android.content.SharedPreferences;
import b1.k;
import c1.AbstractC0213D;
import f1.AbstractC0420a;
import java.io.CharConversionException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import k.Q0;
import u1.i;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0303n implements P, InterfaceC0248d4, k {

    /* renamed from: e, reason: collision with root package name */
    public static final k5 f5653e = new k5(1);
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5654c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5655d;

    public /* synthetic */ C0303n(int i5, Object obj) {
        this.f5654c = i5;
        this.f5655d = obj;
    }

    public static C0303n n() {
        int i5 = 1;
        int i6 = C4.f5349a;
        T3 t32 = new T3(Pattern.compile("[.-]"));
        t32.f5470c.matcher("").getClass();
        if (!(!r2.matches())) {
            throw new IllegalArgumentException(AbstractC0332s.p("The pattern may not match the empty string: %s", t32));
        }
        return new C0303n(2, new C0303n(i5, t32));
    }

    public static void s(C0303n c0303n, G3 g32, InterfaceC0248d4 interfaceC0248d4, C0373y4 c0373y4, G4 g42) {
        AbstractC0213D.e(g32);
        AbstractC0213D.e(c0373y4);
        AbstractC0213D.e(interfaceC0248d4);
        ((c) c0303n.f5655d).r(new C0302m4(c0373y4.f5788d, 3), new e(c0303n, g32, interfaceC0248d4, c0373y4, g42));
    }

    public static final C0303n x(C0303n c0303n, Q q2) throws GeneralSecurityException {
        J1 j1N = J1.n(c0303n.p(), g5.a());
        if (j1N.o().n() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        try {
            Z1 z1Q = Z1.q(q2.a(j1N.o().r(), new byte[0]), g5.a());
            if (z1Q.m() > 0) {
                return new C0303n(4, z1Q);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (C0255f unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    public void A(int i5, long j3) {
        ((f5) this.f5655d).i0(i5, j3);
    }

    public void B(int i5, float f5) {
        ((f5) this.f5655d).g0(i5, Float.floatToRawIntBits(f5));
    }

    public void C(int i5, A a3, Object obj) {
        f5 f5Var = (f5) this.f5655d;
        f5Var.o0(i5, 3);
        a3.g((U4) obj, f5Var.f5564d);
        f5Var.o0(i5, 4);
    }

    public void D(int i5, int i6) {
        ((f5) this.f5655d).k0(i5, i6);
    }

    public void E(int i5, long j3) {
        ((f5) this.f5655d).r0(i5, j3);
    }

    public void F(int i5, A a3, Object obj) {
        ((f5) this.f5655d).m0(i5, (U4) obj, a3);
    }

    public void G(int i5, int i6) {
        ((f5) this.f5655d).g0(i5, i6);
    }

    public void H(int i5, long j3) {
        ((f5) this.f5655d).i0(i5, j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.P
    public Iterator a(C0303n c0303n, CharSequence charSequence) {
        return new C0231b(c0303n, charSequence, new C0303n(((T3) ((E3) this.f5655d)).f5470c.matcher(charSequence)));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        switch (this.f5654c) {
            case 9:
                ((C0342t3) this.f5655d).f5735e.b(AbstractC0420a.t0(str));
                break;
            default:
                ((G3) ((C0377z2) this.f5655d).f5798e).b(AbstractC0420a.t0(str));
                break;
        }
    }

    @Override // b1.k
    public void c(b bVar, i iVar) {
        int i5 = this.f5654c;
        H3 h32 = (H3) bVar;
        Object obj = this.f5655d;
        switch (i5) {
            case 12:
                C0372y3 c0372y3 = (C0372y3) obj;
                c0372y3.getClass();
                c0372y3.f5542m = new U(c0372y3, iVar);
                ((U3) ((I3) h32).h()).r((Q2) c0372y3.f5786o, c0372y3.f5532b);
                break;
            case 13:
                C0378z3 c0378z3 = (C0378z3) obj;
                c0378z3.getClass();
                c0378z3.f5542m = new U(c0378z3, iVar);
                U3 u32 = (U3) ((I3) h32).h();
                d dVar = c0378z3.f5799o;
                u32.k(new S2(dVar.f2926c, dVar.f2927d, c0378z3.f5534d.f3078c.e()), c0378z3.f5532b);
                break;
            case 14:
                C0372y3 c0372y32 = (C0372y3) obj;
                c0372y32.getClass();
                c0372y32.f5542m = new U(c0372y32, iVar);
                ((U3) ((I3) h32).h()).g(new T2(c0372y32.f5534d.f3078c.e(), (N4) c0372y32.f5786o), c0372y32.f5532b);
                break;
            case 15:
                C0372y3 c0372y33 = (C0372y3) obj;
                c0372y33.getClass();
                c0372y33.f5542m = new U(c0372y33, iVar);
                ((U3) ((I3) h32).h()).x(new U2((j) c0372y33.f5786o, c0372y33.f5534d.f3078c.e()), c0372y33.f5532b);
                break;
            case 16:
                C0378z3 c0378z32 = (C0378z3) obj;
                c0378z32.getClass();
                c0378z32.f5542m = new U(c0378z32, iVar);
                s sVar = c0378z32.f5534d;
                d dVar2 = c0378z32.f5799o;
                dVar2.getClass();
                dVar2.f = sVar.f3078c.e();
                dVar2.f2929g = true;
                ((U3) ((I3) h32).h()).b(new C0253e3(dVar2), c0378z32.f5532b);
                break;
            case 17:
                A3 a3 = (A3) obj;
                a3.getClass();
                a3.f5542m = new U(a3, iVar);
                ((U3) ((I3) h32).h()).o(a3.f5326o, a3.f5532b);
                break;
            case 18:
                B3 b3 = (B3) obj;
                b3.getClass();
                b3.f5542m = new U(b3, iVar);
                ((U3) ((I3) h32).h()).b(b3.f5340o, b3.f5532b);
                break;
            case 19:
                C3 c32 = (C3) obj;
                c32.getClass();
                c32.f5542m = new U(c32, iVar);
                ((U3) ((I3) h32).h()).j(c32.f5348o, c32.f5532b);
                break;
            case 20:
                D3 d32 = (D3) obj;
                d32.getClass();
                d32.f5542m = new U(d32, iVar);
                ((U3) ((I3) h32).h()).t(d32.f5355o, d32.f5532b);
                break;
            case 21:
                A3 a32 = (A3) obj;
                a32.getClass();
                a32.f5542m = new U(a32, iVar);
                ((U3) ((I3) h32).h()).o(a32.f5326o, a32.f5532b);
                break;
            case 22:
                C3 c33 = (C3) obj;
                c33.getClass();
                c33.f5542m = new U(c33, iVar);
                ((U3) ((I3) h32).h()).j(c33.f5348o, c33.f5532b);
                break;
            case 23:
                B3 b32 = (B3) obj;
                b32.getClass();
                b32.f5542m = new U(b32, iVar);
                ((U3) ((I3) h32).h()).b(b32.f5340o, b32.f5532b);
                break;
            default:
                D3 d33 = (D3) obj;
                d33.getClass();
                d33.f5542m = new U(d33, iVar);
                ((U3) ((I3) h32).h()).t(d33.f5355o, d33.f5532b);
                break;
        }
    }

    public void d(int i5, int i6) {
        f5 f5Var = (f5) this.f5655d;
        f5Var.p0(i5, (i6 >> 31) ^ (i6 + i6));
    }

    public void e(int i5, long j3) {
        f5 f5Var = (f5) this.f5655d;
        f5Var.r0(i5, (j3 >> 63) ^ (j3 + j3));
    }

    public void f(int i5, int i6) {
        ((f5) this.f5655d).p0(i5, i6);
    }

    public void g(int i5, long j3) {
        ((f5) this.f5655d).r0(i5, j3);
    }

    public void h(String str, InterfaceC0248d4 interfaceC0248d4) {
        AbstractC0213D.c(str);
        C0373y4 c0373y4D = C0373y4.d(str);
        if (c0373y4D.f()) {
            interfaceC0248d4.k(c0373y4D);
            return;
        }
        C0302m4 c0302m4 = new C0302m4(c0373y4D.f5787c, 2);
        C0330r3 c0330r3 = new C0330r3(interfaceC0248d4);
        c cVar = (c) this.f5655d;
        V3 v32 = (V3) cVar.f;
        AbstractC0332s.l(v32.j("/token", (String) cVar.f1142i), c0302m4, c0330r3, C0373y4.class, (C0230a4) v32.f5455b);
    }

    public void i(C0326q4 c0326q4, G3 g32) {
        AbstractC0213D.e(g32);
        C0325q3 c0325q3 = new C0325q3(this, g32, 2);
        c cVar = (c) this.f5655d;
        cVar.getClass();
        V3 v32 = (V3) cVar.f1138d;
        AbstractC0332s.l(v32.j("/emailLinkSignin", (String) cVar.f1142i), c0326q4, c0325q3, AbstractC0331r4.class, (C0230a4) v32.f5455b);
    }

    public C0303n j() throws GeneralSecurityException {
        Z1 z12 = (Z1) this.f5655d;
        if (z12 == null) {
            throw new GeneralSecurityException("cleartext keyset is not available");
        }
        W1 w1O = Z1.o();
        for (Y1 y12 : z12.r()) {
            S1 s1N = y12.n();
            if (s1N.n() != 3) {
                throw new GeneralSecurityException("The keyset contains a non-private key");
            }
            String strQ = s1N.q();
            Z4 z4P = s1N.p();
            U uG = AbstractC0280j0.g(null, strQ);
            if (!(uG instanceof C0256f0)) {
                StringBuilder sb = new StringBuilder(String.valueOf(strQ).length() + 48);
                sb.append("manager for key type ");
                sb.append(strQ);
                sb.append(" is not a PrivateKeyManager");
                throw new GeneralSecurityException(sb.toString());
            }
            C0256f0 c0256f0 = (C0256f0) uG;
            try {
                D1 d1O = D1.o(z4P, g5.a());
                C0369y0.y(d1O);
                F1 f1P = d1O.p();
                c0256f0.f.s(f1P);
                R1 r1M = S1.m();
                if (r1M.f5646e) {
                    r1M.d();
                    r1M.f5646e = false;
                }
                ((S1) r1M.f5645d).zze = "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
                Y4 y4B = f1P.b();
                if (r1M.f5646e) {
                    r1M.d();
                    r1M.f5646e = false;
                }
                ((S1) r1M.f5645d).zzf = y4B;
                if (r1M.f5646e) {
                    r1M.d();
                    r1M.f5646e = false;
                }
                S1.t((S1) r1M.f5645d, 4);
                S1 s12 = (S1) r1M.b();
                String strQ2 = s12.q();
                AbstractC0280j0.g(null, strQ2).e(s12.p());
                X1 x1P = Y1.p();
                x1P.a(y12);
                if (x1P.f5646e) {
                    x1P.d();
                    x1P.f5646e = false;
                }
                ((Y1) x1P.f5645d).zze = s12;
                Y1 y13 = (Y1) x1P.b();
                if (w1O.f5646e) {
                    w1O.d();
                    w1O.f5646e = false;
                }
                Z1.t((Z1) w1O.f5645d, y13);
            } catch (C0255f e5) {
                throw new GeneralSecurityException("expected serialized proto of type ", e5);
            }
        }
        int iN = z12.n();
        if (w1O.f5646e) {
            w1O.d();
            w1O.f5646e = false;
        }
        ((Z1) w1O.f5645d).zze = iN;
        return new C0303n(4, (Z1) w1O.b());
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public /* synthetic */ void k(Y3 y3) {
        switch (this.f5654c) {
            case 9:
                f.B(y3);
                throw null;
            default:
                f.B(y3);
                throw null;
        }
    }

    public void l(int i5, boolean z4) {
        ((f5) this.f5655d).e0(i5, z4);
    }

    public void m(J1 j12) throws IOException {
        if (!((SharedPreferences.Editor) this.f5655d).putString("GenericIdpKeyset", AbstractC0332s.j(j12.c())).commit()) {
            throw new IOException("Failed to write to SharedPreferences");
        }
    }

    public void o(Z1 z12) throws IOException {
        Object obj = this.f5655d;
        switch (this.f5654c) {
            case 3:
                OutputStream outputStream = (OutputStream) obj;
                try {
                    int iD = z12.d();
                    Logger logger = f5.f5563e;
                    if (iD > 4096) {
                        iD = 4096;
                    }
                    e5 e5Var = new e5(outputStream, iD);
                    z12.a(e5Var);
                    if (e5Var.f5558i > 0) {
                        e5Var.v0();
                    }
                    return;
                } finally {
                    outputStream.close();
                }
            default:
                if (!((SharedPreferences.Editor) obj).putString("GenericIdpKeyset", AbstractC0332s.j(z12.c())).commit()) {
                    throw new IOException("Failed to write to SharedPreferences");
                }
                return;
        }
    }

    public byte[] p() throws CharConversionException, FileNotFoundException {
        try {
            String string = ((SharedPreferences) this.f5655d).getString("GenericIdpKeyset", null);
            if (string == null) {
                throw new FileNotFoundException("can't read keyset; the pref value GenericIdpKeyset does not exist");
            }
            if (string.length() % 2 != 0) {
                throw new IllegalArgumentException("Expected a string of even length");
            }
            int length = string.length() / 2;
            byte[] bArr = new byte[length];
            for (int i5 = 0; i5 < length; i5++) {
                int i6 = i5 + i5;
                int iDigit = Character.digit(string.charAt(i6), 16);
                int iDigit2 = Character.digit(string.charAt(i6 + 1), 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    throw new IllegalArgumentException("input is not hexadecimal");
                }
                bArr[i5] = (byte) ((iDigit * 16) + iDigit2);
            }
            return bArr;
        } catch (ClassCastException | IllegalArgumentException unused) {
            throw new CharConversionException("can't read keyset; the pref value GenericIdpKeyset is not a valid hex string");
        }
    }

    public List q(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itA = ((P) this.f5655d).a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (true) {
            C c2 = (C) itA;
            if (!c2.hasNext()) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add((String) c2.next());
        }
    }

    public void r(int i5, Z4 z4) {
        ((f5) this.f5655d).f0(i5, z4);
    }

    public Object t() throws GeneralSecurityException {
        byte[] bArrArray;
        byte b3 = 1;
        InterfaceC0250e0 interfaceC0250e0 = (InterfaceC0250e0) AbstractC0280j0.f5612e.get(T.class);
        Class clsA = interfaceC0250e0 == null ? null : interfaceC0250e0.a();
        if (clsA == null) {
            String name = T.class.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        }
        int i5 = AbstractC0286k0.f5626a;
        Z1 z12 = (Z1) this.f5655d;
        int iN = z12.n();
        boolean z4 = true;
        int i6 = 0;
        boolean z5 = false;
        for (Y1 y12 : z12.r()) {
            if (y12.o() == 2) {
                if (!y12.v()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(y12.m())));
                }
                if (y12.q() == 1) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(y12.m())));
                }
                if (y12.o() == 1) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(y12.m())));
                }
                if (y12.m() == iN) {
                    if (z5) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z5 = true;
                }
                z4 &= y12.n().n() == 4;
                i6++;
            }
        }
        if (i6 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z5 && !z4) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        U u5 = new U(clsA);
        for (Y1 y13 : z12.r()) {
            if (y13.o() == 2) {
                S1 s1N = y13.n();
                Object objE = AbstractC0280j0.g(clsA, s1N.q()).e(s1N.p());
                if (y13.o() != 2) {
                    throw new GeneralSecurityException("only ENABLED key is allowed");
                }
                int iF = Q0.f(y13.q());
                if (iF == b3) {
                    bArrArray = ByteBuffer.allocate(5).put(b3).putInt(y13.m()).array();
                } else if (iF == 2) {
                    bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(y13.m()).array();
                } else if (iF != 3) {
                    if (iF != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                    bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(y13.m()).array();
                } else {
                    bArrArray = AbstractC0332s.f5708a;
                }
                C0238c0 c0238c0 = new C0238c0(objE, bArrArray, y13.o(), y13.q());
                ArrayList arrayList = new ArrayList();
                arrayList.add(c0238c0);
                byte[] bArr = c0238c0.f5526b;
                C0244d0 c0244d0 = new C0244d0(bArr == null ? null : Arrays.copyOf(bArr, bArr.length));
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) u5.f5473e;
                List list = (List) concurrentHashMap.put(c0244d0, Collections.unmodifiableList(arrayList));
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(list);
                    arrayList2.add(c0238c0);
                    concurrentHashMap.put(c0244d0, Collections.unmodifiableList(arrayList2));
                }
                if (y13.m() == z12.n()) {
                    if (c0238c0.f5527c != 2) {
                        throw new IllegalArgumentException("the primary entry has to be ENABLED");
                    }
                    if (u5.f(bArr == null ? null : Arrays.copyOf(bArr, bArr.length)).isEmpty()) {
                        throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
                    }
                }
                b3 = 1;
            }
        }
        InterfaceC0250e0 interfaceC0250e02 = (InterfaceC0250e0) AbstractC0280j0.f5612e.get(T.class);
        Class cls = (Class) u5.f5472d;
        if (interfaceC0250e02 == null) {
            String name2 = cls.getName();
            throw new GeneralSecurityException(name2.length() != 0 ? "No wrapper found for ".concat(name2) : new String("No wrapper found for "));
        }
        if (interfaceC0250e02.a().equals(cls)) {
            return interfaceC0250e02.c(u5);
        }
        String strValueOf = String.valueOf(interfaceC0250e02.a());
        String strValueOf2 = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 44 + strValueOf2.length());
        sb.append("Wrong input primitive class, expected ");
        sb.append(strValueOf);
        sb.append(", got ");
        sb.append(strValueOf2);
        throw new GeneralSecurityException(sb.toString());
    }

    public String toString() {
        switch (this.f5654c) {
            case 4:
                return AbstractC0286k0.a((Z1) this.f5655d).toString();
            default:
                return super.toString();
        }
    }

    public void u(int i5, double d2) {
        ((f5) this.f5655d).i0(i5, Double.doubleToRawLongBits(d2));
    }

    public void v(C0303n c0303n, Q q2) throws GeneralSecurityException, IOException {
        Z1 z12 = (Z1) this.f5655d;
        byte[] bArrB = q2.b(z12.c(), new byte[0]);
        try {
            if (!Z1.q(q2.a(bArrB, new byte[0]), g5.a()).equals(z12)) {
                throw new GeneralSecurityException("cannot encrypt keyset");
            }
            I1 i1M = J1.m();
            Y4 y4Q = Z4.q(bArrB, 0, bArrB.length);
            if (i1M.f5646e) {
                i1M.d();
                i1M.f5646e = false;
            }
            ((J1) i1M.f5645d).zze = y4Q;
            C0246d2 c0246d2A = AbstractC0286k0.a(z12);
            if (i1M.f5646e) {
                i1M.d();
                i1M.f5646e = false;
            }
            ((J1) i1M.f5645d).zzf = c0246d2A;
            c0303n.m((J1) i1M.b());
        } catch (C0255f unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    public void w(C0303n c0303n) throws GeneralSecurityException, IOException {
        Z1 z12 = (Z1) this.f5655d;
        for (Y1 y12 : z12.r()) {
            if (y12.n().n() == 1 || y12.n().n() == 2 || y12.n().n() == 3) {
                throw new GeneralSecurityException("keyset contains key material of type " + f.G(y12.n().n()) + " for type url " + y12.n().q());
            }
        }
        c0303n.o(z12);
    }

    public void y(int i5, int i6) {
        ((f5) this.f5655d).k0(i5, i6);
    }

    public void z(int i5, int i6) {
        ((f5) this.f5655d).g0(i5, i6);
    }

    public /* synthetic */ C0303n(J3.d dVar) {
        this.f5654c = 5;
        Object obj = dVar.f1144c;
        this.f5655d = (Y) dVar.f1147g;
    }

    public C0303n(Matcher matcher) {
        this.f5654c = 25;
        matcher.getClass();
        this.f5655d = matcher;
    }

    public C0303n() {
        r rVar;
        this.f5654c = 0;
        try {
            rVar = (r) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            rVar = f5653e;
        }
        C0297m c0297m = new C0297m(k5.f5634b, rVar);
        Charset charset = AbstractC0243d.f5546a;
        this.f5655d = c0297m;
    }

    public C0303n(Context context, int i5, String str) {
        this.f5654c = i5;
        switch (i5) {
            case 7:
                this.f5655d = context.getApplicationContext().getSharedPreferences(str, 0).edit();
                break;
            default:
                this.f5655d = context.getApplicationContext().getSharedPreferences(str, 0);
                break;
        }
    }

    public C0303n(f5 f5Var) {
        this.f5654c = 26;
        Charset charset = AbstractC0243d.f5546a;
        this.f5655d = f5Var;
        f5Var.f5564d = this;
    }
}
