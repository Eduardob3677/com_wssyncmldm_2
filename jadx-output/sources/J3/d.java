package J3;

import A3.D;
import L3.C0058g;
import L3.C0063l;
import L3.C0070t;
import L3.C0075y;
import L3.EnumC0060i;
import L3.G;
import L3.Q;
import L3.W;
import L3.Z;
import R2.u;
import R3.AbstractC0080b;
import R3.AbstractC0092n;
import R3.C0087i;
import R3.C0094p;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import c1.w;
import c3.InterfaceC0223c;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0286k0;
import com.google.android.gms.internal.p000firebaseauthapi.C0255f;
import com.google.android.gms.internal.p000firebaseauthapi.C0303n;
import com.google.android.gms.internal.p000firebaseauthapi.C0304n0;
import com.google.android.gms.internal.p000firebaseauthapi.D2;
import com.google.android.gms.internal.p000firebaseauthapi.F0;
import com.google.android.gms.internal.p000firebaseauthapi.U1;
import com.google.android.gms.internal.p000firebaseauthapi.V;
import com.google.android.gms.internal.p000firebaseauthapi.W1;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import com.google.android.gms.internal.p000firebaseauthapi.X3;
import com.google.android.gms.internal.p000firebaseauthapi.Y;
import com.google.android.gms.internal.p000firebaseauthapi.Z1;
import com.google.android.gms.internal.p000firebaseauthapi.g5;
import com.google.android.gms.internal.p000firebaseauthapi.l5;
import com.google.firebase.messaging.ExecutorC0382c;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoDatabaseConstants;
import d4.InterfaceC0396a;
import e.v;
import f1.AbstractC0420a;
import h0.AbstractC0432c;
import h4.AbstractC0468v;
import i3.x;
import j1.C0554a;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.ProviderException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.crypto.KeyGenerator;
import k.Q0;
import k2.InterfaceC0638a;
import l2.C0642a;
import l2.C0644c;
import n3.AbstractC0711a;
import o3.AbstractC0729f;
import org.json.JSONException;
import org.json.JSONObject;
import p0.AbstractC0739a;
import r3.InterfaceC0786N;
import r3.InterfaceC0821x;
import s2.C0836b;
import s2.C0837c;
import w3.C0902a;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class d implements InterfaceC0396a, d4.c, X3 {

    /* renamed from: c, reason: collision with root package name */
    public Object f1144c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1145d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1146e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f1147g;

    /* renamed from: h, reason: collision with root package name */
    public Object f1148h;

    public d(int i5) {
        this.f1144c = i5 != 1 ? i5 != 4 ? i5 != 6 ? i5 != 7 ? "REQUEST_TYPE_UNSET_ENUM_VALUE" : "VERIFY_AND_CHANGE_EMAIL" : "EMAIL_SIGNIN" : "VERIFY_EMAIL" : "PASSWORD_RESET";
    }

    public static final V3.g b(d dVar, Q3.f fVar, Object obj) {
        V3.g gVarB = V3.h.f2798a.b(obj, (InterfaceC0821x) dVar.f1146e);
        if (gVarB != null) {
            return gVarB;
        }
        String str = "Unsupported annotation argument: " + fVar;
        d3.i.e("message", str);
        return new V3.j(str);
    }

    public static /* synthetic */ List g(d dVar, X x4, r rVar, boolean z4, Boolean bool, boolean z5, int i5) {
        boolean z6 = (i5 & 4) != 0 ? false : z4;
        if ((i5 & 16) != 0) {
            bool = null;
        }
        return dVar.f(x4, rVar, z6, false, bool, (i5 & 32) != 0 ? false : z5);
    }

    public static r h(AbstractC0080b abstractC0080b, N3.f fVar, C0837c c0837c, int i5, boolean z4) {
        d3.i.e("proto", abstractC0080b);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        B.f.x(i5, "kind");
        if (abstractC0080b instanceof C0063l) {
            C0087i c0087i = P3.h.f2166a;
            P3.e eVarA = P3.h.a((C0063l) abstractC0080b, fVar, c0837c);
            if (eVarA == null) {
                return null;
            }
            return x.z(eVarA);
        }
        if (abstractC0080b instanceof C0075y) {
            C0087i c0087i2 = P3.h.f2166a;
            P3.e eVarC = P3.h.c((C0075y) abstractC0080b, fVar, c0837c);
            if (eVarC == null) {
                return null;
            }
            return x.z(eVarC);
        }
        if (!(abstractC0080b instanceof G)) {
            return null;
        }
        C0094p c0094p = O3.k.f2019d;
        d3.i.d("propertySignature", c0094p);
        O3.e eVar = (O3.e) AbstractC0420a.C((AbstractC0092n) abstractC0080b, c0094p);
        if (eVar == null) {
            return null;
        }
        int iF = Q0.f(i5);
        if (iF == 1) {
            return W1.a.K((G) abstractC0080b, fVar, c0837c, true, true, z4);
        }
        if (iF == 2) {
            if ((eVar.f1978d & 4) != 4) {
                return null;
            }
            O3.c cVar = eVar.f1980g;
            d3.i.d("signature.getter", cVar);
            return new r(fVar.r(cVar.f1967e).concat(fVar.r(cVar.f)));
        }
        if (iF != 3 || (eVar.f1978d & 8) != 8) {
            return null;
        }
        O3.c cVar2 = eVar.f1981h;
        d3.i.d("signature.setter", cVar2);
        return new r(fVar.r(cVar2.f1967e).concat(fVar.r(cVar2.f)));
    }

    public static w3.b q(d4.s sVar) {
        InterfaceC0786N interfaceC0786N = (InterfaceC0786N) sVar.f5489d;
        q qVar = interfaceC0786N instanceof q ? (q) interfaceC0786N : null;
        if (qVar != null) {
            return qVar.f1172b;
        }
        return null;
    }

    @Override // d4.c
    public List G(X x4, AbstractC0080b abstractC0080b, int i5) {
        d3.i.e("proto", abstractC0080b);
        B.f.x(i5, "kind");
        r rVarH = h(abstractC0080b, (N3.f) x4.f5487b, (C0837c) x4.f5488c, i5, false);
        return rVarH != null ? g(this, x4, new r(B.f.w(new StringBuilder(), rVarH.f1173a, "@0")), false, null, false, 60) : u.f2325c;
    }

    @Override // d4.InterfaceC0396a
    public Object J(X x4, G g5, AbstractC0468v abstractC0468v) {
        d3.i.e("proto", g5);
        return m(x4, g5, 3, abstractC0468v, b.f1135e);
    }

    @Override // d4.c
    public List V(X x4, G g5) {
        d3.i.e("proto", g5);
        return n(x4, g5, 3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String a() throws JSONException {
        char c2;
        JSONObject jSONObject = new JSONObject();
        String str = (String) this.f1144c;
        int i5 = 0;
        switch (str.hashCode()) {
            case -1452371317:
                if (!str.equals("PASSWORD_RESET")) {
                    c2 = 65535;
                    break;
                } else {
                    c2 = 0;
                    break;
                }
            case -1341836234:
                if (str.equals("VERIFY_EMAIL")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1099157829:
                if (str.equals("VERIFY_AND_CHANGE_EMAIL")) {
                    c2 = 3;
                    break;
                }
                break;
            case 870738373:
                if (str.equals("EMAIL_SIGNIN")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            i5 = 1;
        } else if (c2 == 1) {
            i5 = 4;
        } else if (c2 == 2) {
            i5 = 6;
        } else if (c2 == 3) {
            i5 = 7;
        }
        jSONObject.put("requestType", i5);
        String str2 = (String) this.f1145d;
        if (str2 != null) {
            jSONObject.put("email", str2);
        }
        String str3 = (String) this.f1146e;
        if (str3 != null) {
            jSONObject.put("newEmail", str3);
        }
        String str4 = (String) this.f;
        if (str4 != null) {
            jSONObject.put("idToken", str4);
        }
        Y1.a aVar = (Y1.a) this.f1147g;
        if (aVar != null) {
            jSONObject.put("androidInstallApp", aVar.f2917g);
            jSONObject.put("canHandleCodeInApp", ((Y1.a) this.f1147g).f2919i);
            String str5 = ((Y1.a) this.f1147g).f2914c;
            if (str5 != null) {
                jSONObject.put("continueUrl", str5);
            }
            String str6 = ((Y1.a) this.f1147g).f2915d;
            if (str6 != null) {
                jSONObject.put("iosBundleId", str6);
            }
            String str7 = ((Y1.a) this.f1147g).f2916e;
            if (str7 != null) {
                jSONObject.put("iosAppStoreId", str7);
            }
            String str8 = ((Y1.a) this.f1147g).f;
            if (str8 != null) {
                jSONObject.put("androidPackageName", str8);
            }
            String str9 = ((Y1.a) this.f1147g).f2918h;
            if (str9 != null) {
                jSONObject.put("androidMinimumVersion", str9);
            }
            String str10 = ((Y1.a) this.f1147g).f2922l;
            if (str10 != null) {
                jSONObject.put("dynamicLinkDomain", str10);
            }
        }
        String str11 = (String) this.f1148h;
        if (str11 != null) {
            jSONObject.put("tenantId", str11);
        }
        return jSONObject.toString();
    }

    @Override // d4.c
    public ArrayList a0(W w2, N3.f fVar) {
        d3.i.e("proto", w2);
        d3.i.e("nameResolver", fVar);
        Object objK = w2.k(O3.k.f2022h);
        d3.i.d("proto.getExtension(JvmPr….typeParameterAnnotation)", objK);
        Iterable<C0058g> iterable = (Iterable) objK;
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        for (C0058g c0058g : iterable) {
            d3.i.d("it", c0058g);
            arrayList.add(((D) this.f1147g).D0(c0058g, fVar));
        }
        return arrayList;
    }

    public void c(String str, String str2) {
        Map map = (Map) this.f1148h;
        if (map == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map.put(str, str2);
    }

    public L0.a d() {
        String strH = ((String) this.f1144c) == null ? " transportName" : "";
        if (((L0.f) this.f1146e) == null) {
            strH = strH.concat(" encodedPayload");
        }
        if (((Long) this.f) == null) {
            strH = AbstractC0432c.h(strH, " eventMillis");
        }
        if (((Long) this.f1147g) == null) {
            strH = AbstractC0432c.h(strH, " uptimeMillis");
        }
        if (((Map) this.f1148h) == null) {
            strH = AbstractC0432c.h(strH, " autoMetadata");
        }
        if (strH.isEmpty()) {
            return new L0.a((String) this.f1144c, (Integer) this.f1145d, (L0.f) this.f1146e, ((Long) this.f).longValue(), ((Long) this.f1147g).longValue(), (Map) this.f1148h);
        }
        throw new IllegalStateException("Missing required properties:".concat(strH));
    }

    public u1.n e(u1.n nVar) {
        Executor executor = ExecutorC0382c.f6227g;
        com.google.firebase.messaging.g gVar = new com.google.firebase.messaging.g(3);
        gVar.f6238d = this;
        return nVar.g(executor, gVar);
    }

    public List f(X x4, r rVar, boolean z4, boolean z5, Boolean bool, boolean z6) {
        List list;
        w3.b bVarI = i(x4, z4, z5, bool, z6);
        if (bVarI == null) {
            bVarI = x4 instanceof d4.s ? q((d4.s) x4) : null;
        }
        u uVar = u.f2325c;
        return (bVarI == null || (list = (List) ((a) ((g4.e) this.f1145d).e(bVarI)).f1132a.get(rVar)) == null) ? uVar : list;
    }

    public w3.b i(X x4, boolean z4, boolean z5, Boolean bool, boolean z6) {
        d4.s sVar;
        d3.i.e("container", x4);
        EnumC0060i enumC0060i = EnumC0060i.INTERFACE;
        v vVar = (v) this.f1144c;
        InterfaceC0786N interfaceC0786N = (InterfaceC0786N) x4.f5489d;
        if (z4) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + x4 + ')').toString());
            }
            if (x4 instanceof d4.s) {
                d4.s sVar2 = (d4.s) x4;
                if (sVar2.f6573h == enumC0060i) {
                    return AbstractC0420a.w(vVar, sVar2.f6572g.d(Q3.f.e("DefaultImpls")), (P3.f) this.f1148h);
                }
            }
            if (bool.booleanValue() && (x4 instanceof d4.t)) {
                h hVar = interfaceC0786N instanceof h ? (h) interfaceC0786N : null;
                Y3.b bVar = hVar != null ? hVar.f1159c : null;
                if (bVar != null) {
                    String strE = bVar.e();
                    d3.i.d("facadeClassName.internalName", strE);
                    return AbstractC0420a.w(vVar, Q3.b.k(new Q3.c(s4.h.q(strE, IDMTndsXmlWbxmlDefine.XML_SLASH, '.'))), (P3.f) this.f1148h);
                }
            }
        }
        if (z5 && (x4 instanceof d4.s)) {
            d4.s sVar3 = (d4.s) x4;
            if (sVar3.f6573h == EnumC0060i.COMPANION_OBJECT && (sVar = sVar3.f) != null) {
                EnumC0060i enumC0060i2 = EnumC0060i.CLASS;
                EnumC0060i enumC0060i3 = sVar.f6573h;
                if (enumC0060i3 == enumC0060i2 || enumC0060i3 == EnumC0060i.ENUM_CLASS || (z6 && (enumC0060i3 == enumC0060i || enumC0060i3 == EnumC0060i.ANNOTATION_CLASS))) {
                    return q(sVar);
                }
            }
        }
        if (!(x4 instanceof d4.t) || !(interfaceC0786N instanceof h)) {
            return null;
        }
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource", interfaceC0786N);
        h hVar2 = (h) interfaceC0786N;
        w3.b bVar2 = hVar2.f1160d;
        return bVar2 == null ? AbstractC0420a.w(vVar, hVar2.b(), (P3.f) this.f1148h) : bVar2;
    }

    public boolean j(Q3.b bVar) {
        d3.i.e("classId", bVar);
        if (bVar.g() == null || !d3.i.a(bVar.j().b(), "Container")) {
            return false;
        }
        w3.b bVarW = AbstractC0420a.w((v) this.f1144c, bVar, (P3.f) this.f1148h);
        if (bVarW == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = AbstractC0711a.f8334a;
        d3.p pVar = new d3.p();
        AbstractC0729f.p(bVarW.f9608a, new w(pVar));
        return pVar.f6515c;
    }

    @Override // d4.c
    public ArrayList j0(Q q2, N3.f fVar) {
        d3.i.e("proto", q2);
        d3.i.e("nameResolver", fVar);
        Object objK = q2.k(O3.k.f);
        d3.i.d("proto.getExtension(JvmProtoBuf.typeAnnotation)", objK);
        Iterable<C0058g> iterable = (Iterable) objK;
        ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
        for (C0058g c0058g : iterable) {
            d3.i.d("it", c0058g);
            arrayList.add(((D) this.f1147g).D0(c0058g, fVar));
        }
        return arrayList;
    }

    public c k(Q3.b bVar, InterfaceC0786N interfaceC0786N, List list) {
        d3.i.e("result", list);
        return new c(this, o4.a.g((InterfaceC0821x) this.f1146e, bVar, (com.google.firebase.messaging.p) this.f), bVar, list, interfaceC0786N);
    }

    @Override // d4.c
    public ArrayList k0(d4.s sVar) {
        d3.i.e("container", sVar);
        w3.b bVarQ = q(sVar);
        if (bVarQ == null) {
            throw new IllegalStateException(("Class for loading annotations is not found: " + sVar.j()).toString());
        }
        ArrayList arrayList = new ArrayList(1);
        Class cls = bVarQ.f9608a;
        d3.i.e("klass", cls);
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        d3.i.d("klass.declaredAnnotations", declaredAnnotations);
        for (Annotation annotation : declaredAnnotations) {
            d3.i.d("annotation", annotation);
            Class clsQ = L2.b.q(L2.b.k(annotation));
            c cVarL = l(AbstractC0917d.a(clsQ), new C0902a(annotation), arrayList);
            if (cVarL != null) {
                AbstractC0729f.q(cVarL, annotation, clsQ);
            }
        }
        return arrayList;
    }

    public c l(Q3.b bVar, C0902a c0902a, List list) {
        d3.i.e("result", list);
        if (AbstractC0711a.f8334a.contains(bVar)) {
            return null;
        }
        return k(bVar, c0902a, list);
    }

    public Object m(X x4, G g5, int i5, AbstractC0468v abstractC0468v, InterfaceC0223c interfaceC0223c) {
        Object objD;
        V3.x xVar;
        w3.b bVarI = i(x4, true, true, N3.e.f1873A.c(g5.f), P3.h.d(g5));
        if (bVarI == null) {
            bVarI = x4 instanceof d4.s ? q((d4.s) x4) : null;
        }
        if (bVarI == null) {
            return null;
        }
        P3.f fVar = (P3.f) bVarI.f9609b.f1290e;
        P3.f fVar2 = f.f1153e;
        fVar.getClass();
        d3.i.e("version", fVar2);
        r rVarH = h(g5, (N3.f) x4.f5487b, (C0837c) x4.f5488c, i5, fVar.a(fVar2.f1866b, fVar2.f1867c, fVar2.f1868d));
        if (rVarH == null || (objD = interfaceC0223c.d(((g4.e) this.f1145d).e(bVarI), rVarH)) == null) {
            return null;
        }
        if (!o3.r.a(abstractC0468v)) {
            return objD;
        }
        V3.g gVar = (V3.g) objD;
        if (gVar instanceof V3.d) {
            xVar = new V3.x(((Number) ((V3.d) gVar).f2797a).byteValue());
        } else if (gVar instanceof V3.u) {
            xVar = new V3.x(((Number) ((V3.u) gVar).f2797a).shortValue());
        } else if (gVar instanceof V3.k) {
            xVar = new V3.x(((Number) ((V3.k) gVar).f2797a).intValue());
        } else {
            if (!(gVar instanceof V3.s)) {
                return gVar;
            }
            xVar = new V3.x(((Number) ((V3.s) gVar).f2797a).longValue());
        }
        return xVar;
    }

    public List n(X x4, G g5, int i5) {
        Boolean boolC = N3.e.f1873A.c(g5.f);
        boolean zD = P3.h.d(g5);
        u uVar = u.f2325c;
        if (i5 == 1) {
            r rVarK = W1.a.K(g5, (N3.f) x4.f5487b, (C0837c) x4.f5488c, (40 & 8) != 0 ? false : false, (40 & 16) != 0 ? false : true, true);
            return rVarK == null ? uVar : g(this, x4, rVarK, true, boolC, zD, 8);
        }
        r rVarK2 = W1.a.K(g5, (N3.f) x4.f5487b, (C0837c) x4.f5488c, (40 & 8) != 0 ? false : true, (40 & 16) != 0 ? false : false, true);
        if (rVarK2 == null) {
            return uVar;
        }
        return s4.h.h(rVarK2.f1173a, "$delegate") != (i5 == 3) ? uVar : f(x4, rVarK2, true, true, boolC, zD);
    }

    public void o(String str, String str2, Bundle bundle) {
        int i5;
        String str3;
        String strEncodeToString;
        int iA;
        PackageInfo packageInfoC;
        bundle.putString(IDMMoDatabaseConstants.IDM_SCOPE, str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        W1.g gVar = (W1.g) this.f1144c;
        gVar.a();
        bundle.putString("gmp_app_id", gVar.f2825c.f2831b);
        com.google.firebase.messaging.l lVar = (com.google.firebase.messaging.l) this.f1145d;
        synchronized (lVar) {
            try {
                if (lVar.f6249d == 0 && (packageInfoC = lVar.c("com.google.android.gms")) != null) {
                    lVar.f6249d = packageInfoC.versionCode;
                }
                i5 = lVar.f6249d;
            } catch (Throwable th) {
                throw th;
            }
        }
        bundle.putString("gmsv", Integer.toString(i5));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", ((com.google.firebase.messaging.l) this.f1145d).a());
        com.google.firebase.messaging.l lVar2 = (com.google.firebase.messaging.l) this.f1145d;
        synchronized (lVar2) {
            try {
                if (lVar2.f6248c == null) {
                    lVar2.e();
                }
                str3 = lVar2.f6248c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bundle.putString("app_ver_name", str3);
        W1.g gVar2 = (W1.g) this.f1144c;
        gVar2.a();
        try {
            strEncodeToString = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(gVar2.f2824b.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            strEncodeToString = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", strEncodeToString);
        try {
            String str4 = ((C0642a) AbstractC0739a.a(((C0644c) ((l2.d) this.f1148h)).d())).f8075a;
            if (TextUtils.isEmpty(str4)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", str4);
            }
        } catch (InterruptedException | ExecutionException e5) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e5);
        }
        bundle.putString("appid", (String) AbstractC0739a.a(((C0644c) ((l2.d) this.f1148h)).c()));
        bundle.putString("cliv", "fcm-23.0.0");
        i2.b bVar = (i2.b) ((InterfaceC0638a) this.f1147g).get();
        C0836b c0836b = (C0836b) ((InterfaceC0638a) this.f).get();
        if (bVar == null || c0836b == null || (iA = bVar.a("fire-iid")) == 1) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(Q0.f(iA)));
        bundle.putString("Firebase-Client", c0836b.a());
    }

    public u1.n p(String str, String str2, Bundle bundle) {
        int i5;
        int i6;
        PackageInfo packageInfo;
        try {
            o(str, str2, bundle);
            Y0.a aVar = (Y0.a) this.f1146e;
            Y0.k kVar = aVar.f2882c;
            synchronized (kVar) {
                if (kVar.f2908c == 0) {
                    try {
                        packageInfo = C0554a.a((Context) kVar.f2910e).f1317a.getPackageManager().getPackageInfo("com.google.android.gms", 0);
                    } catch (PackageManager.NameNotFoundException e5) {
                        String strValueOf = String.valueOf(e5);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
                        sb.append("Failed to find package ");
                        sb.append(strValueOf);
                        Log.w("Metadata", sb.toString());
                        packageInfo = null;
                    }
                    if (packageInfo != null) {
                        kVar.f2908c = packageInfo.versionCode;
                    }
                    i5 = kVar.f2908c;
                } else {
                    i5 = kVar.f2908c;
                }
            }
            if (i5 < 12000000) {
                return aVar.f2882c.a() != 0 ? aVar.a(bundle).h(Y0.m.f2913c, new D(aVar, 14, bundle)) : AbstractC0739a.i(new IOException("MISSING_INSTANCEID_SERVICE"));
            }
            Y0.j jVarB = Y0.j.b(aVar.f2881b);
            synchronized (jVarB) {
                i6 = jVarB.f2905c;
                jVarB.f2905c = i6 + 1;
            }
            return jVarB.c(new Y0.i(i6, 1, bundle, 1)).g(Y0.m.f2913c, Y0.l.f2911c);
        } catch (InterruptedException | ExecutionException e6) {
            return AbstractC0739a.i(e6);
        }
    }

    public void r(U1 u12) {
        String strQ = u12.q();
        byte[] bArrR = u12.p().r();
        int iF = Q0.f(u12.o());
        int i5 = 1;
        if (iF != 1) {
            i5 = 2;
            if (iF != 2) {
                i5 = 3;
                if (iF != 3) {
                    i5 = 4;
                    if (iF != 4) {
                        throw new IllegalArgumentException("Unknown output prefix type");
                    }
                }
            }
        }
        this.f = V.a(bArrR, i5, strQ);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    @Override // d4.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List s(X x4, AbstractC0080b abstractC0080b, int i5, int i6, Z z4) {
        d3.i.e("container", x4);
        d3.i.e("callableProto", abstractC0080b);
        B.f.x(i5, "kind");
        d3.i.e("proto", z4);
        int i7 = 0;
        r rVarH = h(abstractC0080b, (N3.f) x4.f5487b, (C0837c) x4.f5488c, i5, false);
        if (rVarH == null) {
            return u.f2325c;
        }
        if (abstractC0080b instanceof C0075y) {
            C0075y c0075y = (C0075y) abstractC0080b;
            if (c0075y.q() || (c0075y.f1792e & 64) == 64) {
                i7 = 1;
            }
        } else if (abstractC0080b instanceof G) {
            G g5 = (G) abstractC0080b;
            if (g5.q() || (g5.f1406e & 64) == 64) {
            }
        } else {
            if (!(abstractC0080b instanceof C0063l)) {
                throw new UnsupportedOperationException("Unsupported message: " + abstractC0080b.getClass());
            }
            d4.s sVar = (d4.s) x4;
            if (sVar.f6573h == EnumC0060i.ENUM_CLASS) {
                i7 = 2;
            } else if (sVar.f6574i) {
            }
        }
        return g(this, x4, new r(rVarH.f1173a + '@' + (i6 + i7)), false, null, false, 60);
    }

    public void t(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("need an Android context");
        }
        this.f1148h = new C0303n(context, 6, str);
        this.f1144c = new C0303n(context, 7, str);
    }

    @Override // d4.c
    public List u(X x4, G g5) {
        d3.i.e("proto", g5);
        return n(x4, g5, 2);
    }

    public synchronized C0303n v() {
        Y y3;
        if (((String) this.f1145d) != null) {
            this.f1146e = w();
        }
        try {
            y3 = x();
        } catch (FileNotFoundException e5) {
            Log.i("n", "keyset not found, will generate a new one", e5);
            if (((V) this.f) == null) {
                throw new GeneralSecurityException("cannot read or generate keyset");
            }
            y3 = new Y(Z1.o());
            y3.b((V) this.f);
            y3.c(AbstractC0286k0.a((Z1) y3.a().f5655d).n().m());
            if (((C0304n0) this.f1146e) != null) {
                y3.a().v((C0303n) this.f1144c, (C0304n0) this.f1146e);
            } else {
                ((C0303n) this.f1144c).o((Z1) y3.a().f5655d);
            }
        }
        this.f1147g = y3;
        return new C0303n(this);
    }

    public C0304n0 w() throws NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException, InvalidAlgorithmParameterException {
        F0 f02 = new F0();
        boolean zB = f02.b((String) this.f1145d);
        if (!zB) {
            try {
                String str = (String) this.f1145d;
                if (new F0().b(str)) {
                    throw new IllegalArgumentException("cannot generate a new key " + str + " because it already exists; please delete it with deleteKey() and try again");
                }
                String strA = D2.a(str);
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new KeyGenParameterSpec.Builder(strA, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
                keyGenerator.generateKey();
            } catch (GeneralSecurityException | ProviderException e5) {
                Log.w("n", "cannot use Android Keystore, it'll be disabled", e5);
                return null;
            }
        }
        try {
            return f02.a((String) this.f1145d);
        } catch (GeneralSecurityException | ProviderException e6) {
            if (zB) {
                throw new KeyStoreException(B.f.v("the master key ", (String) this.f1145d, " exists but is unusable"), e6);
            }
            Log.w("n", "cannot use Android Keystore, it'll be disabled", e6);
            return null;
        }
    }

    public Y x() throws GeneralSecurityException {
        C0304n0 c0304n0 = (C0304n0) this.f1146e;
        if (c0304n0 != null) {
            try {
                Z1 z12 = (Z1) C0303n.x((C0303n) this.f1148h, c0304n0).f5655d;
                l5 l5Var = (l5) z12.h(5);
                l5Var.a(z12);
                return new Y((W1) l5Var);
            } catch (C0255f | GeneralSecurityException e5) {
                Log.w("n", "cannot decrypt keyset: ", e5);
            }
        }
        Z1 z1Q = Z1.q(((C0303n) this.f1148h).p(), g5.a());
        if (z1Q.m() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        l5 l5Var2 = (l5) z1Q.h(5);
        l5Var2.a(z1Q);
        return new Y((W1) l5Var2);
    }

    @Override // d4.c
    public List y(d4.s sVar, C0070t c0070t) {
        d3.i.e("container", sVar);
        d3.i.e("proto", c0070t);
        String strR = ((N3.f) sVar.f5487b).r(c0070t.f);
        String strC = sVar.f6572g.c();
        d3.i.d("container as ProtoContai…Class).classId.asString()", strC);
        String strB = P3.b.b(strC);
        d3.i.e("desc", strB);
        return g(this, sVar, new r(strR + '#' + strB), false, null, false, 60);
    }

    @Override // d4.InterfaceC0396a
    public Object y0(X x4, G g5, AbstractC0468v abstractC0468v) {
        d3.i.e("proto", g5);
        return m(x4, g5, 2, abstractC0468v, b.f);
    }

    @Override // d4.c
    public List z(X x4, AbstractC0080b abstractC0080b, int i5) {
        d3.i.e("proto", abstractC0080b);
        B.f.x(i5, "kind");
        if (i5 == 2) {
            return n(x4, (G) abstractC0080b, 1);
        }
        r rVarH = h(abstractC0080b, (N3.f) x4.f5487b, (C0837c) x4.f5488c, i5, false);
        return rVarH == null ? u.f2325c : g(this, x4, rVarH, false, null, false, 60);
    }
}
