package com.google.firebase.messaging;

import A3.C0005d;
import J.Q;
import L3.C0061j;
import L3.C0070t;
import android.R;
import android.app.Notification;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.core.graphics.drawable.IconCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import c1.AbstractC0213D;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.A4;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0242c4;
import com.google.android.gms.internal.p000firebaseauthapi.C0303n;
import com.google.android.gms.internal.p000firebaseauthapi.C0348u3;
import com.google.android.gms.internal.p000firebaseauthapi.C0355v4;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.gms.internal.p000firebaseauthapi.F3;
import com.google.android.gms.internal.p000firebaseauthapi.G3;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4;
import com.google.android.gms.internal.p000firebaseauthapi.M4;
import com.google.android.gms.internal.p000firebaseauthapi.W3;
import com.google.android.gms.internal.p000firebaseauthapi.X3;
import com.google.android.gms.internal.p000firebaseauthapi.Y3;
import com.idm.fotaagent.analytics.diagmon.DiagMon;
import com.idm.fotaagent.database.room.data.entity.Property;
import com.idm.fotaagent.database.sqlite.database.dao.UpdateHistoryInfoDao;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.lib.episode.EternalContract;
import com.samsung.context.sdk.samsunganalytics.BuildConfig;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0470x;
import h4.E;
import h4.G;
import h4.J;
import h4.M;
import h4.N;
import h4.O;
import h4.S;
import h4.V;
import h4.X;
import h4.Z;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import i3.InterfaceC0494o;
import j.MenuC0508i;
import j.MenuC0523x;
import j.MenuItemC0515p;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.C0713b;
import o.C0716e;
import o.C0722k;
import o3.EnumC0734k;
import org.json.JSONException;
import org.json.JSONObject;
import q3.C0757d;
import q3.C0758e;
import r3.C0774B;
import r3.C0823z;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import s2.C0837c;
import s3.C0844g;
import s3.C0846i;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import w3.C0902a;
import x3.AbstractC0910B;
import x3.C0911C;
import x3.C0913E;

/* loaded from: classes.dex */
public final class p implements J3.o, J3.m, J3.n, K2.b, InterfaceC0248d4, X3, d4.e, InterfaceC0473a {

    /* renamed from: h, reason: collision with root package name */
    public static p f6256h;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6257c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6258d;

    /* renamed from: e, reason: collision with root package name */
    public Object f6259e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f6260g;

    public p(Context context, W3 w32) {
        this.f6257c = 11;
        this.f6259e = context;
        this.f = w32;
        this.f6260g = R();
    }

    public static Bundle C(L2.a aVar, L2.c cVar) throws JSONException {
        String strValueOf = "";
        Bundle bundle = new Bundle();
        try {
            bundle.putString("serviceId", aVar.f1346b);
            bundle.putString("serviceVersion", aVar.f1347c);
            bundle.putString(DiagMon.Reporter.KEY_SERVICE_DEFINED_KEY, cVar.f1358c);
            bundle.putString(DiagMon.Reporter.KEY_ERROR_CODE, cVar.f1359d);
            bundle.putString("errorDesc", cVar.f1360e);
            bundle.putString("relayClientVersion", "");
            bundle.putString("relayClientType", "");
            bundle.putString("extension", "");
            bundle.putString(Preferences.PREFS_KEY_DID, aVar.f);
            bundle.putString("serviceAgreeType", N2.a.a(aVar.f1345a) == 1 ? (String) aVar.f1350g.f198e : aVar.f1348d);
            try {
                strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            } catch (Exception unused) {
            }
            bundle.putString("sdkVersion", strValueOf);
            bundle.putString("sdkType", "S");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("VM", L2.c.c());
                jSONObject.put("NATIVE", L2.c.b());
                AbstractC0420a.r(jSONObject.toString());
            } catch (JSONException unused2) {
            }
            bundle.putString("memory", jSONObject.toString());
            bundle.putString("storage", L2.c.a().toString());
            AbstractC0420a.r("Generated EventObject");
            return bundle;
        } catch (Exception unused3) {
            return null;
        }
    }

    public static void F(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.delete()) {
                AbstractC0420a.r("Removed zipFile : ".concat(str));
            } else {
                AbstractC0420a.r("Couldn't removed zipFile : ".concat(str));
            }
        }
    }

    public static a2.s O(W1.g gVar, C0355v4 c0355v4) {
        AbstractC0213D.e(gVar);
        AbstractC0213D.e(c0355v4);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a2.q(c0355v4));
        List list = c0355v4.f5757h.f5341c;
        if (list != null && !list.isEmpty()) {
            for (int i5 = 0; i5 < list.size(); i5++) {
                arrayList.add(new a2.q((A4) list.get(i5)));
            }
        }
        a2.s sVar = new a2.s(gVar, arrayList);
        sVar.f3085k = new a2.t(c0355v4.f5761l, c0355v4.f5760k);
        sVar.f3086l = c0355v4.f5762m;
        sVar.f3087m = c0355v4.n;
        sVar.g(i3.x.u1(c0355v4.f5763o));
        return sVar;
    }

    public static void o(Bundle bundle, String str) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpen;
        try {
            parcelFileDescriptorOpen = ParcelFileDescriptor.open(new File(str), 268435456);
            AbstractC0420a.r("Zipping logs is completed");
            AbstractC0420a.r("Zipped file size : " + parcelFileDescriptorOpen.getStatSize());
        } catch (Exception e5) {
            AbstractC0420a.t(e5.getMessage());
            parcelFileDescriptorOpen = null;
        }
        bundle.putParcelable("fileDescriptor", parcelFileDescriptorOpen);
    }

    public static String p(Context context, String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            AbstractC0420a.r0("No Log Path, You have to set LogPath to report logs");
            throw new IOException("Not found");
        }
        try {
            String str2 = context.getFilesDir().getAbsolutePath() + "/zip";
            new File(str2).mkdir();
            String str3 = str2 + "/" + (System.currentTimeMillis() + ".zip");
            Z0.j.e0(str, str3);
            return str3;
        } catch (Exception e5) {
            AbstractC0420a.r0("Zipping failure");
            AbstractC0420a.r0("Exception : " + e5.getMessage());
            throw e5;
        }
    }

    public static boolean t(Context context, L2.a aVar, L2.c cVar, Bundle bundle) {
        try {
            if (aVar == null) {
                AbstractC0420a.r0("No Configuration");
                AbstractC0420a.r0("You have to set DiagMonConfiguration");
                return false;
            }
            Bundle bundleC = C(aVar, cVar);
            if (bundleC == null) {
                AbstractC0420a.r0("No EventObject");
                return false;
            }
            if (!W1.a.V(bundle)) {
                AbstractC0420a.r0("Invalid SR object");
                return false;
            }
            if (!W1.a.V(bundleC)) {
                AbstractC0420a.r0("Invalid ER object");
                return false;
            }
            AbstractC0420a.M("Valid SR, ER object");
            AbstractC0420a.M("Report your logs");
            AbstractC0420a.M("networkMode : " + bundle.getBoolean("wifiOnly", true));
            bundleC.putBoolean("wifiOnly", bundle.getBoolean("wifiOnly", true));
            String strP = p(context, cVar.f1357b);
            o(bundleC, strP);
            N2.a.c(context.getContentResolver().call(N2.a.f1863b, "event_report", "eventReport", bundleC));
            if (!strP.isEmpty()) {
                F(strP);
            }
            return true;
        } catch (NullPointerException | Exception unused) {
            return false;
        }
    }

    public static synchronized p y() {
        try {
            if (f6256h == null) {
                f6256h = new p(0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f6256h;
    }

    public boolean A(Context context) {
        if (((Boolean) this.f6259e) == null) {
            this.f6259e = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!((Boolean) this.f6259e).booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return ((Boolean) this.f6259e).booleanValue();
    }

    public boolean B(f4.t tVar) {
        d3.i.e("descriptor", tVar);
        if (!d3.i.a((f4.t) this.f6259e, tVar)) {
            p pVar = (p) this.f6258d;
            if (!(pVar != null ? pVar.B(tVar) : false)) {
                return false;
            }
        }
        return true;
    }

    public Intent D(Context context, L2.a aVar, L2.c cVar) throws JSONException {
        String strValueOf;
        JSONObject jSONObject = new JSONObject();
        Intent intent = context.getApplicationInfo().uid == 1000 ? new Intent("com.sec.android.diagmonagent.intent.REPORT_ERROR_V2") : new Intent("com.sec.android.diagmonagent.intent.REPORT_ERROR_APP");
        Bundle bundle = new Bundle();
        intent.addFlags(32);
        bundle.putBundle("DiagMon", new Bundle());
        bundle.getBundle("DiagMon").putBundle("CFailLogUpload", new Bundle());
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putString("ServiceID", aVar.f1346b);
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putBundle("Ext", new Bundle());
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("ClientV", L2.b.w(context));
        cVar.getClass();
        if (!TextUtils.isEmpty("")) {
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("RelayClient", "");
        }
        if (!TextUtils.isEmpty("")) {
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("RelayClientV", "");
        }
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("UiMode", "0");
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString(UpdateHistoryInfoDao.IDM_DB_UPDATE_HISTORY_RESULTCODE, cVar.f1359d);
        if (!TextUtils.isEmpty(cVar.f1358c)) {
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("EventID", cVar.f1358c);
        }
        try {
            jSONObject.put("SasdkV", "6.05.073");
            String str = N2.a.f1862a;
            try {
                strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            } catch (Exception unused) {
                strValueOf = "";
            }
            jSONObject.put("SdkV", strValueOf);
            jSONObject.put("TrackingID", "");
            jSONObject.put(UpdateHistoryInfoDao.IDM_DB_UPDATE_HISTORY_DESCRIPTION, cVar.f1360e);
        } catch (JSONException e5) {
            AbstractC0420a.t(e5.getMessage());
        }
        bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString(UpdateHistoryInfoDao.IDM_DB_UPDATE_HISTORY_DESCRIPTION, jSONObject.toString());
        if (((Bundle) this.f).getBoolean("wifiOnly", true)) {
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("WifiOnlyFeature", "1");
        } else {
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("WifiOnlyFeature", "0");
        }
        intent.putExtra("uploadMO", bundle);
        intent.setFlags(32);
        AbstractC0420a.M("EventObject is generated");
        return intent;
    }

    public void E(RecyclerView recyclerView) {
        WeakHashMap weakHashMap = Q.f940a;
        recyclerView.setImportantForAccessibility(2);
        this.f = new H0.e(1, this);
        ViewPager2 viewPager2 = (ViewPager2) this.f6260g;
        if (viewPager2.getImportantForAccessibility() == 0) {
            viewPager2.setImportantForAccessibility(1);
        }
    }

    public void G() {
        try {
            String str = ((L2.a) this.f6259e).f1346b;
            String str2 = N2.a.f1862a;
            ContentResolver contentResolver = ((Context) this.f6258d).getContentResolver();
            contentResolver.call(Uri.parse("content://" + ("com.sec.android.log." + str)), "update_path", ((L2.c) this.f6260g).f1357b, (Bundle) null);
        } catch (Exception e5) {
            AbstractC0420a.r0("fail to send log path: " + e5.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01af  */
    /* JADX WARN: Type inference failed for: r2v12, types: [h4.Z] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public S2.h H(V v4, List list, F3.a aVar) {
        AbstractC0472z abstractC0472zP;
        S2.h hVar = new S2.h();
        Iterator it = list.iterator();
        if (it.hasNext()) {
            AbstractC0468v abstractC0468v = (AbstractC0468v) it.next();
            InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
            boolean z4 = interfaceC0804gI instanceof InterfaceC0802e;
            Set set = aVar.f762e;
            C0451d c0451d = (C0451d) this.f6259e;
            if (z4) {
                c0451d.getClass();
                Z zM0 = abstractC0468v.M0();
                if (zM0 instanceof AbstractC0464q) {
                    AbstractC0464q abstractC0464q = (AbstractC0464q) zM0;
                    AbstractC0472z abstractC0472zP2 = abstractC0464q.f7069d;
                    if (!abstractC0472zP2.J0().k().isEmpty() && abstractC0472zP2.J0().i() != null) {
                        List<InterfaceC0789Q> listK = abstractC0472zP2.J0().k();
                        d3.i.d("constructor.parameters", listK);
                        ArrayList arrayList = new ArrayList(R2.o.C0(listK));
                        for (InterfaceC0789Q interfaceC0789Q : listK) {
                            N e5 = (N) R2.m.P0(interfaceC0789Q.z0(), abstractC0468v.u0());
                            boolean z5 = set != null && set.contains(interfaceC0789Q);
                            if (e5 == null || z5) {
                                e5 = new E(interfaceC0789Q);
                            } else {
                                S sG = v4.g();
                                AbstractC0468v abstractC0468vB = e5.b();
                                d3.i.d("argument.type", abstractC0468vB);
                                if (sG.d(abstractC0468vB) == null) {
                                }
                            }
                            arrayList.add(e5);
                        }
                        abstractC0472zP2 = AbstractC0450c.p(abstractC0472zP2, arrayList, null, 2);
                    }
                    AbstractC0472z abstractC0472zP3 = abstractC0464q.f7070e;
                    if (!abstractC0472zP3.J0().k().isEmpty() && abstractC0472zP3.J0().i() != null) {
                        List<InterfaceC0789Q> listK2 = abstractC0472zP3.J0().k();
                        d3.i.d("constructor.parameters", listK2);
                        ArrayList arrayList2 = new ArrayList(R2.o.C0(listK2));
                        for (InterfaceC0789Q interfaceC0789Q2 : listK2) {
                            N e6 = (N) R2.m.P0(interfaceC0789Q2.z0(), abstractC0468v.u0());
                            boolean z6 = set != null && set.contains(interfaceC0789Q2);
                            if (e6 == null || z6) {
                                e6 = new E(interfaceC0789Q2);
                            } else {
                                S sG2 = v4.g();
                                AbstractC0468v abstractC0468vB2 = e6.b();
                                d3.i.d("argument.type", abstractC0468vB2);
                                if (sG2.d(abstractC0468vB2) == null) {
                                }
                            }
                            arrayList2.add(e6);
                        }
                        abstractC0472zP3 = AbstractC0450c.p(abstractC0472zP3, arrayList2, null, 2);
                    }
                    abstractC0472zP = C0451d.j(abstractC0472zP2, abstractC0472zP3);
                } else {
                    if (!(zM0 instanceof AbstractC0472z)) {
                        throw new A0.c();
                    }
                    AbstractC0472z abstractC0472z = (AbstractC0472z) zM0;
                    boolean zIsEmpty = abstractC0472z.J0().k().isEmpty();
                    abstractC0472zP = abstractC0472z;
                    if (!zIsEmpty) {
                        InterfaceC0804g interfaceC0804gI2 = abstractC0472z.J0().i();
                        abstractC0472zP = abstractC0472z;
                        if (interfaceC0804gI2 != null) {
                            List<InterfaceC0789Q> listK3 = abstractC0472z.J0().k();
                            d3.i.d("constructor.parameters", listK3);
                            ArrayList arrayList3 = new ArrayList(R2.o.C0(listK3));
                            for (InterfaceC0789Q interfaceC0789Q3 : listK3) {
                                N e7 = (N) R2.m.P0(interfaceC0789Q3.z0(), abstractC0468v.u0());
                                boolean z7 = set != null && set.contains(interfaceC0789Q3);
                                if (e7 == null || z7) {
                                    e7 = new E(interfaceC0789Q3);
                                } else {
                                    S sG3 = v4.g();
                                    AbstractC0468v abstractC0468vB3 = e7.b();
                                    d3.i.d("argument.type", abstractC0468vB3);
                                    if (sG3.d(abstractC0468vB3) == null) {
                                    }
                                }
                                arrayList3.add(e7);
                            }
                            abstractC0472zP = AbstractC0450c.p(abstractC0472z, arrayList3, null, 2);
                        }
                    }
                }
                hVar.add(v4.h(3, AbstractC0450c.g(abstractC0472zP, zM0)));
            } else if (interfaceC0804gI instanceof InterfaceC0789Q) {
                if (set == null || !set.contains(interfaceC0804gI)) {
                    List upperBounds = ((InterfaceC0789Q) interfaceC0804gI).getUpperBounds();
                    d3.i.d("declaration.upperBounds", upperBounds);
                    hVar.addAll(H(v4, upperBounds, aVar));
                } else {
                    hVar.add(w(aVar));
                }
            }
            c0451d.getClass();
        }
        S2.e eVar = hVar.f2607c;
        eVar.c();
        eVar.n = true;
        return hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Z I(x3.i iVar, F3.a aVar, boolean z4) {
        EnumC0734k enumC0734kD;
        d3.i.e("arrayType", iVar);
        AbstractC0910B abstractC0910B = iVar.f9659b;
        x3.z zVar = abstractC0910B instanceof x3.z ? (x3.z) abstractC0910B : null;
        if (zVar != null) {
            Class cls = Void.TYPE;
            Class cls2 = zVar.f9676a;
            enumC0734kD = d3.i.a(cls2, cls) ? null : Y3.c.b(cls2.getName()).d();
        }
        D3.e eVar = (D3.e) this.f6258d;
        D3.c cVar = new D3.c(eVar, iVar, true);
        D3.a aVar2 = (D3.a) eVar.f499d;
        boolean z5 = aVar.f761d;
        if (enumC0734kD == null) {
            AbstractC0468v abstractC0468vK = K(abstractC0910B, L2.b.N(2, z5, false, null, 6));
            if (z5) {
                return aVar2.f481o.g().g(z4 ? 3 : 1, abstractC0468vK, cVar);
            }
            return C0451d.j(aVar2.f481o.g().g(1, abstractC0468vK, cVar), aVar2.f481o.g().g(3, abstractC0468vK, cVar).N0(true));
        }
        AbstractC0472z abstractC0472zQ = aVar2.f481o.g().q(enumC0734kD);
        AbstractC0468v abstractC0468vG0 = AbstractC0420a.g0(abstractC0472zQ, new C0846i(new InterfaceC0845h[]{abstractC0472zQ.t(), cVar}));
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType", abstractC0468vG0);
        AbstractC0472z abstractC0472z = (AbstractC0472z) abstractC0468vG0;
        return z5 ? abstractC0472z : C0451d.j(abstractC0472z, abstractC0472z.N0(true));
    }

    @Override // J3.n
    public void J(Q3.b bVar, Q3.f fVar) {
        ((ArrayList) this.f6258d).add(new V3.i(bVar, fVar));
    }

    public AbstractC0468v K(H3.d dVar, F3.a aVar) {
        AbstractC0472z abstractC0472zQ;
        boolean z4 = dVar instanceof x3.z;
        D3.e eVar = (D3.e) this.f6258d;
        if (z4) {
            Class cls = Void.TYPE;
            Class cls2 = ((x3.z) dVar).f9676a;
            EnumC0734k enumC0734kD = d3.i.a(cls2, cls) ? null : Y3.c.b(cls2.getName()).d();
            AbstractC0472z abstractC0472zS = enumC0734kD != null ? ((D3.a) eVar.f499d).f481o.g().s(enumC0734kD) : ((D3.a) eVar.f499d).f481o.g().w();
            d3.i.d("{\n                val pr…ns.unitType\n            }", abstractC0472zS);
            return abstractC0472zS;
        }
        boolean z5 = false;
        if (!(dVar instanceof x3.q)) {
            if (dVar instanceof x3.i) {
                return I((x3.i) dVar, aVar, false);
            }
            if (dVar instanceof C0913E) {
                AbstractC0910B abstractC0910BB = ((C0913E) dVar).b();
                return abstractC0910BB != null ? K(abstractC0910BB, aVar) : ((D3.a) eVar.f499d).f481o.g().m();
            }
            if (dVar == null) {
                return ((D3.a) eVar.f499d).f481o.g().m();
            }
            throw new UnsupportedOperationException("Unsupported type: " + dVar);
        }
        x3.q qVar = (x3.q) dVar;
        if (!aVar.f761d && aVar.f758a != 1) {
            z5 = true;
        }
        boolean zC = qVar.c();
        j4.h hVar = j4.h.f7625e;
        Type type = qVar.f9668a;
        if (!zC && !z5) {
            AbstractC0472z abstractC0472zQ2 = q(qVar, aVar, null);
            return abstractC0472zQ2 != null ? abstractC0472zQ2 : j4.i.c(hVar, type.toString());
        }
        AbstractC0472z abstractC0472zQ3 = q(qVar, aVar.b(3), null);
        if (abstractC0472zQ3 != null && (abstractC0472zQ = q(qVar, aVar.b(2), abstractC0472zQ3)) != null) {
            return zC ? new F3.f(abstractC0472zQ3, abstractC0472zQ) : C0451d.j(abstractC0472zQ3, abstractC0472zQ);
        }
        return j4.i.c(hVar, type.toString());
    }

    public void L() {
        int iA;
        int i5 = R.id.accessibilityActionPageLeft;
        ViewPager2 viewPager2 = (ViewPager2) this.f6260g;
        Q.f(R.id.accessibilityActionPageLeft, viewPager2);
        Q.d(0, viewPager2);
        Q.f(R.id.accessibilityActionPageRight, viewPager2);
        Q.d(0, viewPager2);
        Q.f(R.id.accessibilityActionPageUp, viewPager2);
        Q.d(0, viewPager2);
        Q.f(R.id.accessibilityActionPageDown, viewPager2);
        Q.d(0, viewPager2);
        if (viewPager2.getAdapter() == null || (iA = viewPager2.getAdapter().a()) == 0 || !viewPager2.f5044t) {
            return;
        }
        int orientation = viewPager2.getOrientation();
        H0.k kVar = (H0.k) this.f6259e;
        H0.k kVar2 = (H0.k) this.f6258d;
        if (orientation != 0) {
            if (viewPager2.f < iA - 1) {
                Q.g(viewPager2, new K.c(R.id.accessibilityActionPageDown), kVar2);
            }
            if (viewPager2.f > 0) {
                Q.g(viewPager2, new K.c(R.id.accessibilityActionPageUp), kVar);
                return;
            }
            return;
        }
        boolean z4 = viewPager2.f5034i.A() == 1;
        int i6 = z4 ? 16908360 : 16908361;
        if (z4) {
            i5 = 16908361;
        }
        if (viewPager2.f < iA - 1) {
            Q.g(viewPager2, new K.c(i6), kVar2);
        }
        if (viewPager2.f > 0) {
            Q.g(viewPager2, new K.c(i5), kVar);
        }
    }

    @Override // d4.e
    public d4.d M(Q3.b bVar) {
        d3.i.e("classId", bVar);
        C0061j c0061j = (C0061j) ((LinkedHashMap) this.f6260g).get(bVar);
        if (c0061j == null) {
            return null;
        }
        return new d4.d((N3.f) this.f6258d, c0061j, (N3.a) this.f6259e, (InterfaceC0786N) ((InterfaceC0222b) this.f).e(bVar));
    }

    public J3.c N(int i5, Q3.b bVar, C0902a c0902a) {
        J3.r rVar = (J3.r) this.f6258d;
        d3.i.e("signature", rVar);
        J3.r rVar2 = new J3.r(rVar.f1173a + '@' + i5);
        A3.D d2 = (A3.D) this.f6260g;
        List arrayList = (List) ((HashMap) d2.f81e).get(rVar2);
        if (arrayList == null) {
            arrayList = new ArrayList();
            ((HashMap) d2.f81e).put(rVar2, arrayList);
        }
        return ((J3.d) d2.f80d).l(bVar, c0902a, arrayList);
    }

    public u1.n P(AbstractC0242c4 abstractC0242c4) {
        return Q().f5744a.b(1, abstractC0242c4.a());
    }

    public C0348u3 Q() {
        C0348u3 c0348u3;
        synchronized (this) {
            if (((C0348u3) this.f6258d) == null) {
                try {
                    this.f6258d = (C0348u3) R().get();
                } catch (Exception e5) {
                    String strValueOf = String.valueOf(e5.getMessage());
                    throw new RuntimeException(strValueOf.length() != 0 ? "There was an error while initializing the connection to the GoogleApi: ".concat(strValueOf) : new String("There was an error while initializing the connection to the GoogleApi: "));
                }
            }
            c0348u3 = (C0348u3) this.f6258d;
        }
        return c0348u3;
    }

    public Future R() {
        Future future = (Future) this.f6260g;
        if (future != null) {
            return future;
        }
        F3 f32 = new F3((Context) this.f6259e, (W3) this.f);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor).submit(f32);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        ((String) this.f6258d).getClass();
        jSONObject.put("mfaProvider", 1);
        jSONObject.put("mfaPendingCredential", (String) this.f6259e);
        JSONObject jSONObject2 = new JSONObject();
        String str = (String) this.f;
        if (str != null) {
            jSONObject2.put("sessionInfo", str);
        }
        String str2 = (String) this.f6260g;
        if (str2 != null) {
            jSONObject2.put(KnoxContainerManager.CONTAINER_CREATION_STATUS_CODE, str2);
        }
        jSONObject.put("phoneVerificationInfo", jSONObject2);
        return jSONObject.toString();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        ((G3) this.f).b(AbstractC0420a.t0(str));
    }

    @Override // i.InterfaceC0473a
    public boolean c(AbstractC0474b abstractC0474b, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f6258d).onActionItemClicked(u(abstractC0474b), new MenuItemC0515p((Context) this.f6259e, (D.a) menuItem));
    }

    @Override // J3.n
    public void c0(V3.f fVar) {
        ((ArrayList) this.f6258d).add(new V3.r(new V3.p(fVar)));
    }

    @Override // J3.o
    public void d() {
        switch (this.f6257c) {
            case 4:
                ArrayList arrayList = (ArrayList) this.f6259e;
                if (!arrayList.isEmpty()) {
                    ((HashMap) ((A3.D) this.f).f81e).put((J3.r) this.f6258d, arrayList);
                    break;
                }
                break;
            case 5:
                ((J3.m) this.f6259e).d();
                ((ArrayList) ((p) this.f).f6258d).add(new V3.a((InterfaceC0839b) R2.m.b1((ArrayList) this.f6260g)));
                break;
            default:
                ArrayList arrayList2 = (ArrayList) this.f6258d;
                J3.c cVar = (J3.c) this.f6260g;
                cVar.getClass();
                d3.i.e("elements", arrayList2);
                Q3.f fVar = (Q3.f) this.f;
                if (fVar != null) {
                    u3.V vB = i3.x.B(fVar, (InterfaceC0802e) cVar.f1140g);
                    if (vB == null) {
                        if (((J3.d) cVar.f1139e).j((Q3.b) cVar.f1141h) && d3.i.a(fVar.b(), "value")) {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                if (next instanceof V3.a) {
                                    arrayList3.add(next);
                                }
                            }
                            Iterator it2 = arrayList3.iterator();
                            while (it2.hasNext()) {
                                ((List) cVar.f1142i).add((InterfaceC0839b) ((V3.a) it2.next()).f2797a);
                            }
                            break;
                        }
                    } else {
                        HashMap map = (HashMap) cVar.f;
                        List listE = q4.k.e(arrayList2);
                        AbstractC0468v abstractC0468vE = vB.e();
                        d3.i.d("parameter.type", abstractC0468vE);
                        map.put(fVar, new V3.w(listE, abstractC0468vE));
                        break;
                    }
                }
                break;
        }
    }

    @Override // J3.o
    public J3.m e(Q3.b bVar, C0902a c0902a) {
        return ((J3.d) ((A3.D) this.f).f80d).l(bVar, c0902a, (ArrayList) this.f6259e);
    }

    @Override // i.InterfaceC0473a
    public boolean f(AbstractC0474b abstractC0474b, MenuC0508i menuC0508i) {
        i.g gVarU = u(abstractC0474b);
        C0722k c0722k = (C0722k) this.f6260g;
        Menu menuC0523x = (Menu) c0722k.getOrDefault(menuC0508i, null);
        if (menuC0523x == null) {
            menuC0523x = new MenuC0523x((Context) this.f6259e, menuC0508i);
            c0722k.put(menuC0508i, menuC0523x);
        }
        return ((ActionMode.Callback) this.f6258d).onCreateActionMode(gVarU, menuC0523x);
    }

    @Override // J3.m
    public void g(Q3.f fVar, Object obj) {
        ((J3.m) this.f6258d).g(fVar, obj);
    }

    @Override // J3.m
    public void h(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
        ((J3.m) this.f6258d).h(fVar, bVar, fVar2);
    }

    @Override // J3.m
    public void i(Q3.f fVar, V3.f fVar2) {
        ((J3.m) this.f6258d).i(fVar, fVar2);
    }

    @Override // J3.m
    public J3.m j(Q3.b bVar, Q3.f fVar) {
        return ((J3.m) this.f6258d).j(bVar, fVar);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void k(Y3 y3) {
        C0373y4 c0373y4 = (C0373y4) y3;
        G4 g42 = new G4();
        g42.d(c0373y4.f5788d);
        M4 m42 = (M4) g42.f5383j;
        String str = (String) this.f6258d;
        if (str == null) {
            m42.f5433d.add("EMAIL");
        } else {
            g42.f5379e = str;
        }
        String str2 = (String) this.f6259e;
        if (str2 == null) {
            m42.f5433d.add("PASSWORD");
        } else {
            g42.f = str2;
        }
        C0303n.s((C0303n) this.f6260g, (G3) this.f, this, c0373y4, g42);
    }

    @Override // i.InterfaceC0473a
    public boolean l(AbstractC0474b abstractC0474b, MenuC0508i menuC0508i) {
        i.g gVarU = u(abstractC0474b);
        C0722k c0722k = (C0722k) this.f6260g;
        Menu menuC0523x = (Menu) c0722k.getOrDefault(menuC0508i, null);
        if (menuC0523x == null) {
            menuC0523x = new MenuC0523x((Context) this.f6259e, menuC0508i);
            c0722k.put(menuC0508i, menuC0523x);
        }
        return ((ActionMode.Callback) this.f6258d).onPrepareActionMode(gVarU, menuC0523x);
    }

    @Override // J3.m
    public J3.n m(Q3.f fVar) {
        return ((J3.m) this.f6258d).m(fVar);
    }

    @Override // i.InterfaceC0473a
    public void n(AbstractC0474b abstractC0474b) {
        ((ActionMode.Callback) this.f6258d).onDestroyActionMode(u(abstractC0474b));
    }

    @Override // K2.b
    public int onFinish() {
        return 0;
    }

    @Override // J3.n
    public J3.m p0(Q3.b bVar) {
        ArrayList arrayList = new ArrayList();
        return new p(((J3.d) this.f6259e).k(bVar, InterfaceC0786N.f8790a, arrayList), this, arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a3  */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC0472z q(x3.q qVar, F3.a aVar, AbstractC0472z abstractC0472z) {
        G gW;
        G g5;
        J j3;
        J jH;
        boolean z4;
        ?? G1;
        Iterator it;
        List list;
        Object o2;
        Object obj;
        Iterator it2;
        N nC;
        InterfaceC0802e interfaceC0802eB;
        int iA;
        F3.a aVar2 = aVar;
        D3.e eVar = (D3.e) this.f6258d;
        if (abstractC0472z == null || (gW = abstractC0472z.I0()) == null) {
            gW = AbstractC0450c.w(new D3.c(eVar, qVar, false));
        }
        G g6 = gW;
        x3.s sVar = qVar.f9669b;
        if (sVar == null) {
            qVar.getClass();
            throw new UnsupportedOperationException("Type not found: " + qVar.f9668a);
        }
        boolean z5 = sVar instanceof x3.o;
        int i5 = aVar2.f758a;
        int i6 = aVar2.f759b;
        boolean z6 = aVar2.f761d;
        if (z5) {
            x3.o oVar = (x3.o) sVar;
            Q3.c cVarB = oVar.b();
            if (z6 && d3.i.a(cVarB, F3.c.f767a)) {
                o3.l lVar = ((D3.a) eVar.f499d).f482p;
                lVar.getClass();
                InterfaceC0494o interfaceC0494o = o3.l.f8474e[0];
                lVar.f8477c.getClass();
                d3.i.e(Property.TABLE_NAME, interfaceC0494o);
                Q3.f fVarE = Q3.f.e(o4.a.a(interfaceC0494o.getName()));
                g5 = g6;
                InterfaceC0804g interfaceC0804gC = ((a4.o) lVar.f8476b.getValue()).c(fVarE, z3.b.f9730d);
                InterfaceC0802e interfaceC0802e = interfaceC0804gC instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC : null;
                interfaceC0802eB = interfaceC0802e == null ? lVar.f8475a.v(new Q3.b(o3.n.f8536h, fVarE), AbstractC0420a.V(1)) : interfaceC0802e;
            } else {
                g5 = g6;
                interfaceC0802eB = C0758e.b(cVarB, ((D3.a) eVar.f499d).f481o.g());
                if (interfaceC0802eB == null) {
                    interfaceC0802eB = null;
                } else {
                    String str = C0757d.f8645a;
                    Q3.e eVarG = T3.e.g(interfaceC0802eB);
                    HashMap map = C0757d.f8654k;
                    if (map.containsKey(eVarG)) {
                        if (i6 == 3 || i5 == 1) {
                            interfaceC0802eB = C0758e.a(interfaceC0802eB);
                        } else {
                            H3.d dVar = (H3.d) R2.m.V0(qVar.b());
                            C0913E c0913e = dVar instanceof C0913E ? (C0913E) dVar : null;
                            if (c0913e != null && c0913e.b() != null) {
                                d3.i.d("reflectType.upperBounds", c0913e.f9642a.getUpperBounds());
                                if (!(!d3.i.a(R2.i.o0(r2), Object.class))) {
                                    Q3.e eVarG2 = T3.e.g(interfaceC0802eB);
                                    String str2 = C0757d.f8645a;
                                    Q3.c cVar = (Q3.c) map.get(eVarG2);
                                    if (cVar == null) {
                                        throw new IllegalArgumentException("Given class " + interfaceC0802eB + " is not a read-only collection");
                                    }
                                    List listK = X3.f.e(interfaceC0802eB).i(cVar).H().k();
                                    d3.i.d("JavaToKotlinClassMapper.…ypeConstructor.parameters", listK);
                                    InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) R2.m.V0(listK);
                                    if (interfaceC0789Q != null && (iA = interfaceC0789Q.A()) != 0 && iA != 3) {
                                    }
                                }
                            }
                        }
                        if (j3 == null) {
                            return null;
                        }
                        boolean z7 = i6 == 3 ? false : (z6 || i5 == 1) ? false : true;
                        if (d3.i.a(abstractC0472z != null ? abstractC0472z.J0() : null, j3) && !qVar.c() && z7) {
                            return abstractC0472z.N0(true);
                        }
                        if (qVar.c()) {
                            z4 = true;
                        } else {
                            if (qVar.b().isEmpty()) {
                                d3.i.d("constructor.parameters", j3.k());
                                if (!r0.isEmpty()) {
                                }
                            }
                            z4 = false;
                        }
                        List<InterfaceC0789Q> listK2 = j3.k();
                        d3.i.d("constructor.parameters", listK2);
                        if (z4) {
                            G1 = new ArrayList(R2.o.C0(listK2));
                            Iterator it3 = listK2.iterator();
                            while (it3.hasNext()) {
                                InterfaceC0789Q interfaceC0789Q2 = (InterfaceC0789Q) it3.next();
                                if (AbstractC0420a.L(interfaceC0789Q2, null, aVar2.f762e)) {
                                    nC = X.l(interfaceC0789Q2, aVar2);
                                    it2 = it3;
                                } else {
                                    it2 = it3;
                                    C0470x c0470x = new C0470x(((D3.a) eVar.f499d).f469a, new F3.b(this, interfaceC0789Q2, aVar, j3, qVar));
                                    F3.a aVarA = F3.a.a(aVar, 0, qVar.c(), null, null, 59);
                                    ((Z0.h) this.f).getClass();
                                    nC = Z0.h.c(interfaceC0789Q2, aVarA, (p) this.f6260g, c0470x);
                                }
                                G1.add(nC);
                                aVar2 = aVar;
                                it3 = it2;
                            }
                        } else if (listK2.size() == qVar.b().size()) {
                            R2.k kVarK1 = R2.m.k1(qVar.b());
                            ArrayList arrayList = new ArrayList(R2.o.C0(kVarK1));
                            Iterator it4 = kVarK1.iterator();
                            while (true) {
                                R2.y yVar = (R2.y) it4;
                                if (!yVar.f2331d.hasNext()) {
                                    G1 = R2.m.g1(arrayList);
                                    break;
                                }
                                R2.x xVar = (R2.x) yVar.next();
                                H3.d dVar2 = (H3.d) xVar.f2329b;
                                listK2.size();
                                InterfaceC0789Q interfaceC0789Q3 = (InterfaceC0789Q) listK2.get(xVar.f2328a);
                                F3.a aVarN = L2.b.N(2, false, false, null, 7);
                                d3.i.d("parameter", interfaceC0789Q3);
                                if (dVar2 instanceof C0913E) {
                                    C0913E c0913e2 = (C0913E) dVar2;
                                    AbstractC0910B abstractC0910BB = c0913e2.b();
                                    Type[] upperBounds = c0913e2.f9642a.getUpperBounds();
                                    d3.i.d("reflectType.upperBounds", upperBounds);
                                    int i7 = d3.i.a(R2.i.o0(upperBounds), Object.class) ^ true ? 3 : 2;
                                    if (abstractC0910BB == null || !(interfaceC0789Q3.A() == 1 || i7 == interfaceC0789Q3.A())) {
                                        it = it4;
                                        list = listK2;
                                        o2 = X.l(interfaceC0789Q3, aVarN);
                                    } else {
                                        d3.i.e("c", eVar);
                                        d3.i.e("wildcardType", c0913e2);
                                        if (c0913e2.b() == null) {
                                            throw new IllegalArgumentException("Nullability annotations on unbounded wildcards aren't supported".toString());
                                        }
                                        Iterator it5 = new D3.c(eVar, c0913e2, false).iterator();
                                        while (true) {
                                            r4.e eVar2 = (r4.e) it5;
                                            if (!eVar2.hasNext()) {
                                                it = it4;
                                                list = listK2;
                                                obj = null;
                                                break;
                                            }
                                            Object next = eVar2.next();
                                            InterfaceC0839b interfaceC0839b = (InterfaceC0839b) next;
                                            Q3.c[] cVarArr = A3.s.f147b;
                                            it = it4;
                                            int length = cVarArr.length;
                                            Iterator it6 = it5;
                                            int i8 = 0;
                                            while (i8 < length) {
                                                int i9 = length;
                                                list = listK2;
                                                if (d3.i.a(interfaceC0839b.a(), cVarArr[i8])) {
                                                    obj = next;
                                                    break;
                                                }
                                                i8++;
                                                length = i9;
                                                listK2 = list;
                                            }
                                            it4 = it;
                                            it5 = it6;
                                        }
                                        InterfaceC0839b interfaceC0839b2 = (InterfaceC0839b) obj;
                                        int i10 = 0;
                                        AbstractC0468v abstractC0468vK = K(abstractC0910BB, L2.b.N(2, false, false, null, 7));
                                        if (interfaceC0839b2 != null) {
                                            ArrayList arrayListX0 = R2.m.X0(abstractC0468vK.t(), interfaceC0839b2);
                                            abstractC0468vK = AbstractC0420a.g0(abstractC0468vK, arrayListX0.isEmpty() ? C0844g.f9041a : new C0846i(i10, arrayListX0));
                                        }
                                        o2 = AbstractC0420a.m(abstractC0468vK, i7, interfaceC0789Q3);
                                    }
                                } else {
                                    it = it4;
                                    list = listK2;
                                    o2 = new O(1, K(dVar2, aVarN));
                                }
                                arrayList.add(o2);
                                it4 = it;
                                listK2 = list;
                            }
                        } else {
                            ArrayList arrayList2 = new ArrayList(R2.o.C0(listK2));
                            for (InterfaceC0789Q interfaceC0789Q4 : listK2) {
                                j4.h hVar = j4.h.f7639u;
                                String strB = interfaceC0789Q4.getName().b();
                                d3.i.d("p.name.asString()", strB);
                                arrayList2.add(new O(j4.i.c(hVar, strB)));
                            }
                            G1 = R2.m.g1(arrayList2);
                        }
                        return C0451d.r(g5, j3, G1, z7);
                    }
                }
            }
            if (interfaceC0802eB == null) {
                C0837c c0837c = (C0837c) ((D3.a) eVar.f499d).f478k.f9022c;
                if (c0837c == null) {
                    d3.i.g("resolver");
                    throw null;
                }
                interfaceC0802eB = c0837c.n(oVar);
            }
            if (interfaceC0802eB == null || (jH = interfaceC0802eB.H()) == null) {
                qVar.getClass();
                throw new UnsupportedOperationException("Type not found: " + qVar.f9668a);
            }
        } else {
            g5 = g6;
            if (!(sVar instanceof C0911C)) {
                throw new IllegalStateException("Unknown classifier kind: " + sVar);
            }
            InterfaceC0789Q interfaceC0789QA = ((D3.g) this.f6259e).a((C0911C) sVar);
            if (interfaceC0789QA != null) {
                jH = interfaceC0789QA.H();
            } else {
                j3 = null;
                if (j3 == null) {
                }
            }
        }
        j3 = jH;
        if (j3 == null) {
        }
    }

    public void r(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((C0722k) this.f6259e).getOrDefault(obj, null);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i5 = 0; i5 < size; i5++) {
                r(arrayList2.get(i5), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0068 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x000a, B:6:0x0011, B:32:0x006c, B:9:0x001a, B:12:0x0026, B:15:0x002d, B:17:0x0031, B:23:0x0040, B:31:0x0068, B:26:0x004d, B:27:0x0056, B:28:0x0060), top: B:36:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // K2.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        File[] fileArrListFiles;
        boolean zS;
        Context context = (Context) this.f6258d;
        L2.c cVar = (L2.c) this.f6260g;
        try {
            if (N2.a.b()) {
                return;
            }
            String str = cVar.f1357b;
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length >= 1) {
                    int iA = N2.a.a(context);
                    if (iA != 0) {
                        L2.a aVar = (L2.a) this.f6259e;
                        if (iA == 1) {
                            AbstractC0420a.r("LEGACY DMA");
                            zS = s(context, aVar, cVar);
                        } else if (iA != 2) {
                            AbstractC0420a.r0("Exceptional case");
                            AbstractC0420a.r0("customEventReport is aborted");
                        } else {
                            zS = t(context, aVar, cVar, (Bundle) this.f);
                        }
                        if (zS) {
                            AbstractC0420a.r0("failed to customEventReport");
                            return;
                        }
                        return;
                    }
                    AbstractC0420a.r0("not installed");
                    zS = false;
                    if (zS) {
                    }
                }
            }
            AbstractC0420a.r0("You have to properly set LogPath");
        } catch (Exception e5) {
            AbstractC0420a.r0("failed to customEventReport" + e5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[Catch: NullPointerException | Exception -> 0x0059, TryCatch #0 {NullPointerException | Exception -> 0x0059, blocks: (B:3:0x0001, B:5:0x000a, B:15:0x002b, B:17:0x0031, B:19:0x0039, B:21:0x0044, B:7:0x0011, B:9:0x0019, B:12:0x0022, B:10:0x001e), top: B:24:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031 A[Catch: NullPointerException | Exception -> 0x0059, TryCatch #0 {NullPointerException | Exception -> 0x0059, blocks: (B:3:0x0001, B:5:0x000a, B:15:0x002b, B:17:0x0031, B:19:0x0039, B:21:0x0044, B:7:0x0011, B:9:0x0019, B:12:0x0022, B:10:0x001e), top: B:24:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean s(Context context, L2.a aVar, L2.c cVar) {
        boolean z4;
        try {
            if (TextUtils.isEmpty(aVar.f1346b)) {
                AbstractC0420a.r0("Service ID has to be set");
            } else {
                if (N2.a.a(aVar.f1345a) == 1 ? aVar.f1350g.f197d : aVar.f1349e) {
                    z4 = true;
                    if (z4) {
                        AbstractC0420a.r0("Invalid DiagMonConfiguration");
                        return false;
                    }
                    if (TextUtils.isEmpty(cVar.f1359d)) {
                        AbstractC0420a.r0("No Result code - you have to set");
                        AbstractC0420a.r0("Invalid EventBuilder");
                        return false;
                    }
                    AbstractC0420a.r("Valid EventBuilder");
                    G();
                    context.sendBroadcast(D(context, aVar, cVar));
                    AbstractC0420a.r("Report your logs");
                    return true;
                }
                AbstractC0420a.r0("You have to agree to terms and conditions");
            }
            z4 = false;
            if (z4) {
            }
        } catch (NullPointerException | Exception unused) {
            return false;
        }
    }

    public i.g u(AbstractC0474b abstractC0474b) {
        ArrayList arrayList = (ArrayList) this.f;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            i.g gVar = (i.g) arrayList.get(i5);
            if (gVar != null && gVar.f7097b == abstractC0474b) {
                return gVar;
            }
        }
        i.g gVar2 = new i.g((Context) this.f6259e, abstractC0474b);
        arrayList.add(gVar2);
        return gVar2;
    }

    @Override // J3.n
    public void u0(Object obj) {
        ((ArrayList) this.f6258d).add(J3.d.b((J3.d) this.f6259e, (Q3.f) this.f, obj));
    }

    public InterfaceC0802e v(Q3.b bVar, List list) {
        d3.i.e("classId", bVar);
        return (InterfaceC0802e) ((g4.e) this.f6260g).e(new C0823z(bVar, list));
    }

    public Z w(F3.a aVar) {
        Z zH0;
        AbstractC0472z abstractC0472z = aVar.f;
        return (abstractC0472z == null || (zH0 = AbstractC0420a.h0(abstractC0472z)) == null) ? (j4.f) ((Q2.h) this.f).getValue() : zH0;
    }

    public AbstractC0468v x(InterfaceC0789Q interfaceC0789Q, F3.a aVar) {
        d3.i.e("typeParameter", interfaceC0789Q);
        d3.i.e("typeAttr", aVar);
        return (AbstractC0468v) ((g4.e) this.f6260g).e(new M(interfaceC0789Q, aVar));
    }

    public boolean z(Context context) {
        if (((Boolean) this.f) == null) {
            this.f = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!((Boolean) this.f6259e).booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return ((Boolean) this.f).booleanValue();
    }

    public p(C0303n c0303n, String str, String str2, G3 g32) {
        this.f6257c = 10;
        this.f6260g = c0303n;
        this.f6258d = str;
        this.f6259e = str2;
        this.f = g32;
    }

    public /* synthetic */ p(Object obj, Object obj2, Object obj3, Object obj4, int i5) {
        this.f6257c = i5;
        this.f6258d = obj;
        this.f6259e = obj2;
        this.f = obj3;
        this.f6260g = obj4;
    }

    public p(int i5) {
        this.f6257c = i5;
        switch (i5) {
            case 1:
                this.f6258d = new C0713b();
                this.f6259e = new SparseArray();
                this.f = new C0716e();
                this.f6260g = new C0713b();
                break;
            case 9:
                break;
            case 19:
                this.f6258d = new I.c(10);
                this.f6259e = new C0722k();
                this.f = new ArrayList();
                this.f6260g = new HashSet();
                break;
            default:
                this.f6258d = null;
                this.f6259e = null;
                this.f = null;
                this.f6260g = new ArrayDeque();
                break;
        }
    }

    public p(String str, String str2, String str3) {
        this.f6257c = 12;
        AbstractC0213D.c(EternalContract.DEVICE_TYPE_PHONE);
        this.f6258d = EternalContract.DEVICE_TYPE_PHONE;
        AbstractC0213D.c(str);
        this.f6259e = str;
        this.f = str2;
        this.f6260g = str3;
    }

    public p(Z0.h hVar) {
        this.f6257c = 16;
        C0451d c0451d = new C0451d();
        this.f6258d = hVar;
        this.f6259e = c0451d;
        g4.l lVar = new g4.l("Type parameter upper bound erasure results");
        this.f = new Q2.h(new B3.k(17, this));
        this.f6260g = lVar.b(new C0005d(20, this));
    }

    public p(g4.o oVar, InterfaceC0821x interfaceC0821x) {
        this.f6257c = 18;
        d3.i.e("storageManager", oVar);
        d3.i.e("module", interfaceC0821x);
        this.f6258d = oVar;
        this.f6259e = interfaceC0821x;
        g4.l lVar = (g4.l) oVar;
        this.f = lVar.b(new C0774B(this, 1));
        this.f6260g = lVar.b(new C0774B(this, 0));
    }

    public p(L3.E e5, A3.D d2, M3.a aVar, C0005d c0005d) {
        this.f6257c = 13;
        this.f6258d = d2;
        this.f6259e = aVar;
        this.f = c0005d;
        List list = e5.f1387i;
        d3.i.d("proto.class_List", list);
        int iY1 = R2.z.y1(R2.o.C0(list));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1 < 16 ? 16 : iY1);
        for (Object obj : list) {
            linkedHashMap.put(L2.b.l((N3.f) this.f6258d, ((C0061j) obj).f1689g), obj);
        }
        this.f6260g = linkedHashMap;
    }

    public p(L2.a aVar, Bundle bundle, L2.c cVar) {
        this.f6257c = 7;
        this.f6258d = aVar.f1345a;
        this.f6259e = aVar;
        this.f = bundle;
        this.f6260g = cVar;
    }

    public p(D3.e eVar, D3.g gVar) {
        this.f6257c = 2;
        d3.i.e("c", eVar);
        d3.i.e("typeParameterResolver", gVar);
        this.f6258d = eVar;
        this.f6259e = gVar;
        Z0.h hVar = new Z0.h(2);
        this.f = hVar;
        this.f6260g = new p(hVar);
    }

    public p(y.p pVar) {
        this.f6257c = 21;
        new ArrayList();
        this.f6260g = new Bundle();
        this.f = pVar;
        Context context = pVar.f9684a;
        this.f6258d = context;
        Notification.Builder builderA = y.u.a(context, pVar.f9698q);
        this.f6259e = builderA;
        Notification notification = pVar.f9700s;
        builderA.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(pVar.f9688e).setContentText(pVar.f).setContentInfo(null).setContentIntent(pVar.f9689g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(pVar.f9691i).setProgress(0, 0, false);
        IconCompat iconCompat = pVar.f9690h;
        y.s.b(builderA, iconCompat == null ? null : C.c.c(iconCompat, context));
        builderA.setSubText(null).setUsesChronometer(false).setPriority(pVar.f9692j);
        Iterator it = pVar.f9685b.iterator();
        while (it.hasNext()) {
            ((y.j) it.next()).getClass();
            Notification.Action.Builder builderA2 = y.s.a(null, null, null);
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", false);
            y.t.a(builderA2, false);
            bundle.putInt("android.support.action.semanticAction", 0);
            y.v.b(builderA2, 0);
            y.w.c(builderA2, false);
            y.x.a(builderA2, false);
            bundle.putBoolean("android.support.action.showsUserInterface", false);
            y.q.b(builderA2, bundle);
            y.q.a((Notification.Builder) this.f6259e, y.q.d(builderA2));
        }
        Bundle bundle2 = pVar.n;
        if (bundle2 != null) {
            ((Bundle) this.f6260g).putAll(bundle2);
        }
        ((Notification.Builder) this.f6259e).setShowWhen(pVar.f9693k);
        y.q.i((Notification.Builder) this.f6259e, pVar.f9695m);
        y.q.g((Notification.Builder) this.f6259e, null);
        y.q.j((Notification.Builder) this.f6259e, null);
        y.q.h((Notification.Builder) this.f6259e, false);
        y.r.b((Notification.Builder) this.f6259e, null);
        y.r.c((Notification.Builder) this.f6259e, pVar.f9696o);
        y.r.f((Notification.Builder) this.f6259e, pVar.f9697p);
        y.r.d((Notification.Builder) this.f6259e, null);
        y.r.e((Notification.Builder) this.f6259e, notification.sound, notification.audioAttributes);
        ArrayList arrayList = pVar.f9701t;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                y.r.a((Notification.Builder) this.f6259e, (String) it2.next());
            }
        }
        ArrayList arrayList2 = pVar.f9687d;
        if (arrayList2.size() > 0) {
            if (pVar.n == null) {
                pVar.n = new Bundle();
            }
            Bundle bundle3 = pVar.n.getBundle("android.car.EXTENSIONS");
            bundle3 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle4 = new Bundle(bundle3);
            Bundle bundle5 = new Bundle();
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                String string = Integer.toString(i5);
                y.j jVar = (y.j) arrayList2.get(i5);
                Bundle bundle6 = new Bundle();
                jVar.getClass();
                bundle6.putInt("icon", 0);
                bundle6.putCharSequence("title", null);
                bundle6.putParcelable("actionIntent", null);
                Bundle bundle7 = new Bundle();
                bundle7.putBoolean("android.support.allowGeneratedReplies", false);
                bundle6.putBundle("extras", bundle7);
                bundle6.putParcelableArray("remoteInputs", null);
                bundle6.putBoolean("showsUserInterface", false);
                bundle6.putInt("semanticAction", 0);
                bundle5.putBundle(string, bundle6);
            }
            bundle3.putBundle("invisible_actions", bundle5);
            bundle4.putBundle("invisible_actions", bundle5);
            if (pVar.n == null) {
                pVar.n = new Bundle();
            }
            pVar.n.putBundle("android.car.EXTENSIONS", bundle3);
            ((Bundle) this.f6260g).putBundle("android.car.EXTENSIONS", bundle4);
        }
        ((Notification.Builder) this.f6259e).setExtras(pVar.n);
        y.t.e((Notification.Builder) this.f6259e, null);
        y.u.b((Notification.Builder) this.f6259e, 0);
        y.u.e((Notification.Builder) this.f6259e, null);
        y.u.f((Notification.Builder) this.f6259e, null);
        y.u.g((Notification.Builder) this.f6259e, 0L);
        y.u.d((Notification.Builder) this.f6259e, 0);
        if (!TextUtils.isEmpty(pVar.f9698q)) {
            ((Notification.Builder) this.f6259e).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator it3 = pVar.f9686c.iterator();
        if (!it3.hasNext()) {
            y.w.a((Notification.Builder) this.f6259e, pVar.f9699r);
            y.w.b((Notification.Builder) this.f6259e, null);
        } else {
            B.f.F(it3.next());
            throw null;
        }
    }

    public p(Typeface typeface, W.b bVar) {
        int i5;
        int i6;
        this.f6257c = 8;
        this.f6260g = typeface;
        this.f6258d = bVar;
        this.f = new androidx.emoji2.text.q(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i7 = iA + bVar.f935a;
            i5 = ((ByteBuffer) bVar.f938d).getInt(((ByteBuffer) bVar.f938d).getInt(i7) + i7);
        } else {
            i5 = 0;
        }
        this.f6259e = new char[i5 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i8 = iA2 + bVar.f935a;
            i6 = ((ByteBuffer) bVar.f938d).getInt(((ByteBuffer) bVar.f938d).getInt(i8) + i8);
        } else {
            i6 = 0;
        }
        for (int i9 = 0; i9 < i6; i9++) {
            androidx.emoji2.text.m mVar = new androidx.emoji2.text.m(this, i9);
            W.a aVarC = mVar.c();
            int iA3 = aVarC.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarC.f938d).getInt(iA3 + aVarC.f935a) : 0, (char[]) this.f6259e, i9 * 2);
            Z0.j.k("invalid metadata codepoint length", mVar.b() > 0);
            ((androidx.emoji2.text.q) this.f).a(mVar, 0, mVar.b() - 1);
        }
    }

    public p(A3.D d2, J3.r rVar) {
        this.f6257c = 4;
        this.f6260g = d2;
        this.f6257c = 4;
        this.f = d2;
        this.f6258d = rVar;
        this.f6259e = new ArrayList();
    }

    public p(Context context, ActionMode.Callback callback) {
        this.f6257c = 17;
        this.f6259e = context;
        this.f6258d = callback;
        this.f = new ArrayList();
        this.f6260g = new C0722k();
    }

    public p(J3.d dVar, Q3.f fVar, J3.c cVar) {
        this.f6257c = 6;
        this.f6259e = dVar;
        this.f = fVar;
        this.f6260g = cVar;
        this.f6258d = new ArrayList();
    }

    public p(J3.c cVar, p pVar, ArrayList arrayList) {
        this.f6257c = 5;
        this.f6259e = cVar;
        this.f = pVar;
        this.f6260g = arrayList;
        this.f6258d = cVar;
    }

    public p(f4.i iVar) {
        this.f6257c = 14;
        this.f6260g = iVar;
        List list = iVar.f6850g.f1703v;
        d3.i.d("classProto.enumEntryList", list);
        int iY1 = R2.z.y1(R2.o.C0(list));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1 < 16 ? 16 : iY1);
        for (Object obj : list) {
            linkedHashMap.put(L2.b.v((N3.f) iVar.n.f5378d, ((C0070t) obj).f), obj);
        }
        this.f6258d = linkedHashMap;
        f4.i iVar2 = (f4.i) this.f6260g;
        this.f6259e = ((g4.l) ((d4.i) iVar2.n.f5377c).f6529a).c(new E3.p(this, 6, iVar2));
        g4.o oVar = ((d4.i) ((f4.i) this.f6260g).n.f5377c).f6529a;
        B3.k kVar = new B3.k(12, this);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f = new g4.i(lVar, kVar);
    }

    public p(ViewPager2 viewPager2) {
        this.f6257c = 3;
        this.f6260g = viewPager2;
        this.f6258d = new H0.k(this, 0);
        this.f6259e = new H0.k(this, 1);
    }
}
