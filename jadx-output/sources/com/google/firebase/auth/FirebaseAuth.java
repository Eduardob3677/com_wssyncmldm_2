package com.google.firebase.auth;

import A3.D;
import W1.g;
import Y1.b;
import Y1.c;
import Y1.d;
import Y1.j;
import Y1.r;
import Y1.t;
import Y1.u;
import a2.C0107c;
import a2.InterfaceC0105a;
import a2.f;
import a2.h;
import a2.i;
import a2.k;
import a2.q;
import a2.s;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import b1.ComponentCallbacks2C0197c;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.A3;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0260f4;
import com.google.android.gms.internal.p000firebaseauthapi.B3;
import com.google.android.gms.internal.p000firebaseauthapi.C0372y3;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.gms.internal.p000firebaseauthapi.C0378z3;
import com.google.android.gms.internal.p000firebaseauthapi.C3;
import com.google.android.gms.internal.p000firebaseauthapi.D3;
import com.google.android.gms.internal.p000firebaseauthapi.F2;
import com.google.android.gms.internal.p000firebaseauthapi.J3;
import com.google.android.gms.internal.p000firebaseauthapi.N4;
import com.google.android.gms.internal.p000firebaseauthapi.W3;
import com.google.firebase.messaging.p;
import com.samsung.android.knox.ex.KnoxContract;
import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p0.AbstractC0739a;
import s2.C0837c;

/* loaded from: classes.dex */
public abstract class FirebaseAuth implements InterfaceC0105a {

    /* renamed from: a, reason: collision with root package name */
    public final g f6182a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f6183b;

    /* renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f6184c;

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList f6185d;

    /* renamed from: e, reason: collision with root package name */
    public final p f6186e;
    public s f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f6187g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f6188h;

    /* renamed from: i, reason: collision with root package name */
    public final String f6189i;

    /* renamed from: j, reason: collision with root package name */
    public final D f6190j;

    /* renamed from: k, reason: collision with root package name */
    public final k f6191k;

    /* renamed from: l, reason: collision with root package name */
    public C0837c f6192l;

    /* renamed from: m, reason: collision with root package name */
    public final i f6193m;

    /* JADX WARN: Removed duplicated region for block: B:4:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FirebaseAuth(g gVar) throws JSONException {
        s sVarS0;
        char c2;
        b bVar;
        b bVar2;
        int i5 = 1;
        gVar.a();
        String str = gVar.f2825c.f2830a;
        AbstractC0213D.c(str);
        W3 w32 = new W3(str);
        gVar.a();
        p pVar = new p(gVar.f2823a, w32);
        gVar.a();
        D d2 = new D(gVar.f2823a, 16, gVar.f());
        k kVar = k.f3057b;
        this.f6183b = new CopyOnWriteArrayList();
        this.f6184c = new CopyOnWriteArrayList();
        this.f6185d = new CopyOnWriteArrayList();
        this.f6187g = new Object();
        this.f6188h = new Object();
        this.f6193m = i.f3054d;
        this.f6182a = gVar;
        this.f6186e = pVar;
        this.f6190j = d2;
        AbstractC0213D.e(kVar);
        this.f6191k = kVar;
        String string = ((SharedPreferences) d2.f80d).getString("com.google.firebase.auth.FIREBASE_USER", null);
        if (TextUtils.isEmpty(string)) {
            sVarS0 = null;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(string);
                if (jSONObject.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                    sVarS0 = d2.S0(jSONObject);
                }
            } catch (Exception unused) {
            }
        }
        this.f = sVarS0;
        if (sVarS0 != null) {
            D d5 = this.f6190j;
            d5.getClass();
            String string2 = ((SharedPreferences) d5.f80d).getString(AbstractC0432c.i("com.google.firebase.auth.GET_TOKEN_RESPONSE.", sVarS0.f3079d.f3071c), null);
            C0373y4 c0373y4D = string2 != null ? C0373y4.d(string2) : null;
            if (c0373y4D != null) {
                d(this, this.f, c0373y4D, false, false);
            }
        }
        this.f6191k.f3058a.getClass();
        g gVar2 = this.f6182a;
        gVar2.a();
        SharedPreferences sharedPreferences = gVar2.f2823a.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0);
        String string3 = sharedPreferences.getString("firebaseAppName", "");
        g gVar3 = this.f6182a;
        gVar3.a();
        if (gVar3.f2824b.equals(string3)) {
            if (!sharedPreferences.contains("verifyAssertionRequest")) {
                if (!sharedPreferences.contains("recaptchaToken")) {
                    if (sharedPreferences.contains("statusCode")) {
                        Status status = new Status(sharedPreferences.getInt("statusCode", 17062), sharedPreferences.getString("statusMessage", ""));
                        sharedPreferences.getLong("timestamp", 0L);
                        a2.g.a(sharedPreferences);
                        AbstractC0739a.i(J3.a(status));
                        return;
                    }
                    return;
                }
                String string4 = sharedPreferences.getString("recaptchaToken", "");
                String string5 = sharedPreferences.getString("operation", "");
                sharedPreferences.getLong("timestamp", 0L);
                if (string5.hashCode() == -214796028 && string5.equals("com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA")) {
                    AbstractC0739a.j(string4);
                }
                a2.g.a(sharedPreferences);
                return;
            }
            String string6 = sharedPreferences.getString("verifyAssertionRequest", "");
            Parcelable.Creator<N4> creator = N4.CREATOR;
            byte[] bArrDecode = string6 == null ? null : Base64.decode(string6, 10);
            AbstractC0213D.e(creator);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
            parcelObtain.setDataPosition(0);
            N4 n4CreateFromParcel = creator.createFromParcel(parcelObtain);
            parcelObtain.recycle();
            N4 n42 = n4CreateFromParcel;
            String string7 = sharedPreferences.getString("operation", "");
            String string8 = sharedPreferences.getString("tenantId", null);
            String string9 = sharedPreferences.getString("firebaseUserUid", "");
            sharedPreferences.getLong("timestamp", 0L);
            if (string8 != null) {
                AbstractC0213D.c(string8);
                synchronized (this.f6188h) {
                    this.f6189i = string8;
                }
                n42.f5447p = string8;
            }
            int iHashCode = string7.hashCode();
            if (iHashCode != -98509410) {
                if (iHashCode != 175006864) {
                    c2 = (iHashCode == 1450464913 && string7.equals("com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN")) ? (char) 0 : (char) 65535;
                } else if (string7.equals("com.google.firebase.auth.internal.NONGMSCORE_LINK")) {
                    c2 = 1;
                }
            } else if (string7.equals("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE")) {
                c2 = 2;
            }
            if (c2 == 0) {
                c cVarD = r.e(n42).d();
                boolean z4 = cVarD instanceof d;
                g gVar4 = this.f6182a;
                p pVar2 = this.f6186e;
                if (z4) {
                    d dVar = (d) cVarD;
                    if (!TextUtils.isEmpty(dVar.f2928e)) {
                        String str2 = dVar.f2928e;
                        AbstractC0213D.c(str2);
                        int i6 = b.f2923c;
                        AbstractC0213D.c(str2);
                        try {
                            bVar = new b(str2);
                        } catch (IllegalArgumentException unused2) {
                            bVar = null;
                        }
                        if (bVar == null || TextUtils.equals(this.f6189i, bVar.f2925b)) {
                            u uVar = new u((a2.r) this);
                            pVar2.getClass();
                            B3 b3 = new B3(dVar, 1);
                            b3.d(gVar4);
                            b3.f5535e = uVar;
                            pVar2.P(b3);
                        } else {
                            AbstractC0739a.i(J3.a(new Status(17072, null)));
                        }
                    } else {
                        String str3 = dVar.f2927d;
                        AbstractC0213D.c(str3);
                        String str4 = this.f6189i;
                        u uVar2 = new u((a2.r) this);
                        pVar2.getClass();
                        C3 c32 = new C3(1, dVar.f2926c, str3, str4);
                        c32.d(gVar4);
                        c32.f5535e = uVar2;
                        pVar2.P(c32);
                    }
                } else if (cVarD instanceof j) {
                    String str5 = this.f6189i;
                    u uVar3 = new u((a2.r) this);
                    pVar2.getClass();
                    AbstractC0260f4.f5562a.clear();
                    D3 d32 = new D3((j) cVarD, str5, 1);
                    d32.d(gVar4);
                    d32.f5535e = uVar3;
                    pVar2.P(d32);
                } else {
                    String str6 = this.f6189i;
                    u uVar4 = new u((a2.r) this);
                    pVar2.getClass();
                    A3 a3 = new A3(cVarD, str6, 1);
                    a3.d(gVar4);
                    a3.f5535e = uVar4;
                    pVar2.P(a3);
                }
            } else if (c2 != 1) {
                if (c2 == 2 && this.f.f3079d.f3071c.equals(string9)) {
                    s sVar = this.f;
                    r rVarE = r.e(n42);
                    AbstractC0213D.e(sVar);
                    c cVarD2 = rVarE.d();
                    boolean z5 = cVarD2 instanceof d;
                    g gVar5 = this.f6182a;
                    p pVar3 = this.f6186e;
                    if (z5) {
                        d dVar2 = (d) cVarD2;
                        if (KnoxContract.Config.Settings.PARAM_PASSWORD.equals(!TextUtils.isEmpty(dVar2.f2927d) ? KnoxContract.Config.Settings.PARAM_PASSWORD : "emailLink")) {
                            String str7 = dVar2.f2927d;
                            AbstractC0213D.c(str7);
                            String strD = sVar.d();
                            t tVar = new t((a2.r) this, i5);
                            pVar3.getClass();
                            C3 c33 = new C3(0, dVar2.f2926c, str7, strD);
                            c33.d(gVar5);
                            c33.f5534d = sVar;
                            c33.f5535e = tVar;
                            c33.f = tVar;
                            pVar3.P(c33);
                        } else {
                            String str8 = dVar2.f2928e;
                            AbstractC0213D.c(str8);
                            int i7 = b.f2923c;
                            AbstractC0213D.c(str8);
                            try {
                                bVar2 = new b(str8);
                            } catch (IllegalArgumentException unused3) {
                                bVar2 = null;
                            }
                            if (bVar2 == null || TextUtils.equals(this.f6189i, bVar2.f2925b)) {
                                t tVar2 = new t((a2.r) this, i5);
                                pVar3.getClass();
                                B3 b32 = new B3(dVar2, 0);
                                b32.d(gVar5);
                                b32.f5534d = sVar;
                                b32.f5535e = tVar2;
                                b32.f = tVar2;
                                pVar3.P(b32);
                            } else {
                                AbstractC0739a.i(J3.a(new Status(17072, null)));
                            }
                        }
                    } else if (cVarD2 instanceof j) {
                        String str9 = this.f6189i;
                        t tVar3 = new t((a2.r) this, i5);
                        pVar3.getClass();
                        AbstractC0260f4.f5562a.clear();
                        D3 d33 = new D3((j) cVarD2, str9, 0);
                        d33.d(gVar5);
                        d33.f5534d = sVar;
                        d33.f5535e = tVar3;
                        d33.f = tVar3;
                        pVar3.P(d33);
                    } else {
                        String strD2 = sVar.d();
                        t tVar4 = new t((a2.r) this, i5);
                        pVar3.getClass();
                        A3 a32 = new A3(cVarD2, strD2, 0);
                        a32.d(gVar5);
                        a32.f5534d = sVar;
                        a32.f5535e = tVar4;
                        a32.f = tVar4;
                        pVar3.P(a32);
                    }
                }
            } else if (this.f.f3079d.f3071c.equals(string9)) {
                s sVar2 = this.f;
                r rVarE2 = r.e(n42);
                AbstractC0213D.e(sVar2);
                c cVarD3 = rVarE2.d();
                t tVar5 = new t((a2.r) this, i5);
                p pVar4 = this.f6186e;
                pVar4.getClass();
                g gVar6 = this.f6182a;
                AbstractC0213D.e(gVar6);
                List list = sVar2.f3082h;
                if (list != null && list.contains(((r) cVarD3).f2951c)) {
                    AbstractC0739a.i(J3.a(new Status(17015, null)));
                } else if (cVarD3 instanceof d) {
                    d dVar3 = (d) cVarD3;
                    if (!TextUtils.isEmpty(dVar3.f2928e)) {
                        C0378z3 c0378z3 = new C0378z3(dVar3, 1);
                        c0378z3.f5533c = gVar6;
                        c0378z3.f5534d = sVar2;
                        c0378z3.f5535e = tVar5;
                        c0378z3.f = tVar5;
                        pVar4.P(c0378z3);
                    } else {
                        C0378z3 c0378z32 = new C0378z3(dVar3, 0);
                        c0378z32.f5533c = gVar6;
                        c0378z32.f5534d = sVar2;
                        c0378z32.f5535e = tVar5;
                        c0378z32.f = tVar5;
                        pVar4.P(c0378z32);
                    }
                } else if (cVarD3 instanceof j) {
                    AbstractC0260f4.f5562a.clear();
                    C0372y3 c0372y3 = new C0372y3((j) cVarD3);
                    c0372y3.f5533c = gVar6;
                    c0372y3.f5534d = sVar2;
                    c0372y3.f5535e = tVar5;
                    c0372y3.f = tVar5;
                    pVar4.P(c0372y3);
                } else {
                    C0372y3 c0372y32 = new C0372y3(cVarD3);
                    c0372y32.f5533c = gVar6;
                    c0372y32.f5534d = sVar2;
                    c0372y32.f5535e = tVar5;
                    c0372y32.f = tVar5;
                    pVar4.P(c0372y32);
                }
            }
            a2.g.a(sharedPreferences);
        }
    }

    public static void b(FirebaseAuth firebaseAuth, s sVar) {
        if (sVar != null) {
            String str = sVar.f3079d.f3071c;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("Notifying auth state listeners about user ( ");
            sb.append(str);
            sb.append(" ).");
            Log.d("FirebaseAuth", sb.toString());
        } else {
            Log.d("FirebaseAuth", "Notifying auth state listeners about a sign-out event.");
        }
        firebaseAuth.f6193m.execute(new Y1.s(firebaseAuth));
    }

    public static void c(FirebaseAuth firebaseAuth, s sVar) {
        if (sVar != null) {
            String str = sVar.f3079d.f3071c;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45);
            sb.append("Notifying id token listeners about user ( ");
            sb.append(str);
            sb.append(" ).");
            Log.d("FirebaseAuth", sb.toString());
        } else {
            Log.d("FirebaseAuth", "Notifying id token listeners about a sign-out event.");
        }
        String str2 = sVar != null ? sVar.f3078c.f5788d : null;
        p2.b bVar = new p2.b();
        bVar.f8578a = str2;
        firebaseAuth.f6193m.execute(new Y1.s(firebaseAuth, bVar));
    }

    public static void d(FirebaseAuth firebaseAuth, s sVar, C0373y4 c0373y4, boolean z4, boolean z5) throws JSONException {
        boolean z6;
        ArrayList arrayList;
        ArrayList arrayList2;
        String string;
        AbstractC0213D.e(sVar);
        AbstractC0213D.e(c0373y4);
        s sVar2 = firebaseAuth.f;
        boolean z7 = true;
        boolean z8 = sVar2 != null && sVar.f3079d.f3071c.equals(sVar2.f3079d.f3071c);
        if (z8 || !z5) {
            s sVar3 = firebaseAuth.f;
            if (sVar3 == null) {
                z6 = true;
            } else {
                boolean z9 = !z8 || (sVar3.f3078c.f5788d.equals(c0373y4.f5788d) ^ true);
                z6 = true ^ z8;
                z7 = z9;
            }
            s sVar4 = firebaseAuth.f;
            if (sVar4 == null) {
                firebaseAuth.f = sVar;
            } else {
                sVar4.f(sVar.f3081g);
                if (!sVar.e()) {
                    firebaseAuth.f.f3084j = Boolean.FALSE;
                }
                f fVar = sVar.n;
                if (fVar != null) {
                    arrayList = new ArrayList();
                    Iterator it = fVar.f3049c.iterator();
                    while (it.hasNext()) {
                        arrayList.add((Y1.k) it.next());
                    }
                } else {
                    arrayList = new ArrayList();
                }
                firebaseAuth.f.g(arrayList);
            }
            if (z4) {
                D d2 = firebaseAuth.f6190j;
                s sVar5 = firebaseAuth.f;
                d2.getClass();
                AbstractC0213D.e(sVar5);
                JSONObject jSONObject = new JSONObject();
                if (s.class.isAssignableFrom(sVar5.getClass())) {
                    try {
                        jSONObject.put("cachedTokenState", sVar5.f3078c.e());
                        g gVarE = g.e(sVar5.f3080e);
                        gVarE.a();
                        jSONObject.put("applicationName", gVarE.f2824b);
                        jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
                        if (sVar5.f3081g != null) {
                            JSONArray jSONArray = new JSONArray();
                            List list = sVar5.f3081g;
                            for (int i5 = 0; i5 < list.size(); i5++) {
                                jSONArray.put(((q) list.get(i5)).d());
                            }
                            jSONObject.put("userInfos", jSONArray);
                        }
                        jSONObject.put("anonymous", sVar5.e());
                        jSONObject.put("version", "2");
                        a2.t tVar = sVar5.f3085k;
                        if (tVar != null) {
                            JSONObject jSONObject2 = new JSONObject();
                            try {
                                jSONObject2.put("lastSignInTimestamp", tVar.f3088c);
                                jSONObject2.put("creationTimestamp", tVar.f3089d);
                            } catch (JSONException unused) {
                            }
                            jSONObject.put("userMetadata", jSONObject2);
                        }
                        f fVar2 = sVar5.n;
                        if (fVar2 != null) {
                            arrayList2 = new ArrayList();
                            Iterator it2 = fVar2.f3049c.iterator();
                            while (it2.hasNext()) {
                                arrayList2.add((Y1.k) it2.next());
                            }
                        } else {
                            arrayList2 = new ArrayList();
                        }
                        if (!arrayList2.isEmpty()) {
                            JSONArray jSONArray2 = new JSONArray();
                            for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                                jSONArray2.put(((Y1.k) arrayList2.get(i6)).d());
                            }
                            jSONObject.put("userMultiFactorInfo", jSONArray2);
                        }
                        string = jSONObject.toString();
                    } catch (Exception e5) {
                        A.d dVar = (A.d) d2.f81e;
                        Log.wtf((String) dVar.f11b, dVar.f("Failed to turn object into JSON", new Object[0]), e5);
                        throw new F2(e5);
                    }
                } else {
                    string = null;
                }
                if (!TextUtils.isEmpty(string)) {
                    ((SharedPreferences) d2.f80d).edit().putString("com.google.firebase.auth.FIREBASE_USER", string).apply();
                }
            }
            if (z7) {
                s sVar6 = firebaseAuth.f;
                if (sVar6 != null) {
                    sVar6.f3078c = c0373y4;
                }
                c(firebaseAuth, sVar6);
            }
            if (z6) {
                b(firebaseAuth, firebaseAuth.f);
            }
            if (z4) {
                D d5 = firebaseAuth.f6190j;
                d5.getClass();
                ((SharedPreferences) d5.f80d).edit().putString(AbstractC0432c.i("com.google.firebase.auth.GET_TOKEN_RESPONSE.", sVar.f3079d.f3071c), c0373y4.e()).apply();
            }
            s sVar7 = firebaseAuth.f;
            if (sVar7 != null) {
                if (firebaseAuth.f6192l == null) {
                    g gVar = firebaseAuth.f6182a;
                    AbstractC0213D.e(gVar);
                    gVar.a();
                    C0107c c0107c = new C0107c(gVar);
                    C0837c c0837c = new C0837c();
                    c0837c.f9022c = c0107c;
                    ComponentCallbacks2C0197c.b((Application) gVar.f2823a.getApplicationContext());
                    ComponentCallbacks2C0197c.f5058g.a(new h(0, c0837c));
                    firebaseAuth.f6192l = c0837c;
                }
                C0837c c0837c2 = firebaseAuth.f6192l;
                C0373y4 c0373y42 = sVar7.f3078c;
                c0837c2.getClass();
                if (c0373y42 == null) {
                    return;
                }
                Long l5 = c0373y42.f5789e;
                long jLongValue = l5 == null ? 0L : l5.longValue();
                if (jLongValue <= 0) {
                    jLongValue = 3600;
                }
                long jLongValue2 = c0373y42.f5790g.longValue();
                C0107c c0107c2 = (C0107c) c0837c2.f9022c;
                c0107c2.f3043a = (jLongValue * 1000) + jLongValue2;
                c0107c2.f3044b = -1L;
            }
        }
    }

    public static FirebaseAuth getInstance() {
        return (FirebaseAuth) g.d().b(FirebaseAuth.class);
    }

    public final void a() {
        D d2 = this.f6190j;
        AbstractC0213D.e(d2);
        s sVar = this.f;
        SharedPreferences sharedPreferences = (SharedPreferences) d2.f80d;
        if (sVar != null) {
            sharedPreferences.edit().remove(AbstractC0432c.i("com.google.firebase.auth.GET_TOKEN_RESPONSE.", sVar.f3079d.f3071c)).apply();
            this.f = null;
        }
        sharedPreferences.edit().remove("com.google.firebase.auth.FIREBASE_USER").apply();
        c(this, null);
        b(this, null);
        C0837c c0837c = this.f6192l;
        if (c0837c != null) {
            C0107c c0107c = (C0107c) c0837c.f9022c;
            c0107c.f3045c.removeCallbacks(c0107c.f3046d);
        }
    }

    public static FirebaseAuth getInstance(g gVar) {
        return (FirebaseAuth) gVar.b(FirebaseAuth.class);
    }
}
