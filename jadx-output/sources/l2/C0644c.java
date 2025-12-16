package l2;

import android.content.SharedPreferences;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import com.idm.network.IDMNetworkInterface;
import e.v;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import k.Q0;
import k2.InterfaceC0638a;
import m2.C0707a;
import n2.C0710a;
import org.json.JSONException;
import org.json.JSONObject;
import p0.AbstractC0739a;
import u1.n;

/* renamed from: l2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0644c implements d {

    /* renamed from: m, reason: collision with root package name */
    public static final Object f8081m = new Object();
    public static final l.b n = new l.b(1);

    /* renamed from: a, reason: collision with root package name */
    public final W1.g f8082a;

    /* renamed from: b, reason: collision with root package name */
    public final n2.c f8083b;

    /* renamed from: c, reason: collision with root package name */
    public final m2.b f8084c;

    /* renamed from: d, reason: collision with root package name */
    public final j f8085d;

    /* renamed from: e, reason: collision with root package name */
    public final m2.b f8086e;
    public final h f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f8087g;

    /* renamed from: h, reason: collision with root package name */
    public final ExecutorService f8088h;

    /* renamed from: i, reason: collision with root package name */
    public final ThreadPoolExecutor f8089i;

    /* renamed from: j, reason: collision with root package name */
    public String f8090j;

    /* renamed from: k, reason: collision with root package name */
    public final HashSet f8091k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f8092l;

    public C0644c(W1.g gVar, InterfaceC0638a interfaceC0638a, InterfaceC0638a interfaceC0638a2) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        l.b bVar = n;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, timeUnit, linkedBlockingQueue, bVar);
        gVar.a();
        n2.c cVar = new n2.c(gVar.f2823a, interfaceC0638a, interfaceC0638a2);
        m2.b bVar2 = new m2.b(gVar, 1);
        if (Z0.h.f3012g == null) {
            Z0.h.f3012g = new Z0.h(16);
        }
        Z0.h hVar = Z0.h.f3012g;
        if (j.f8100d == null) {
            j.f8100d = new j(hVar);
        }
        j jVar = j.f8100d;
        m2.b bVar3 = new m2.b(gVar, 0);
        h hVar2 = new h();
        this.f8087g = new Object();
        this.f8091k = new HashSet();
        this.f8092l = new ArrayList();
        this.f8082a = gVar;
        this.f8083b = cVar;
        this.f8084c = bVar2;
        this.f8085d = jVar;
        this.f8086e = bVar3;
        this.f = hVar2;
        this.f8088h = threadPoolExecutor;
        this.f8089i = new ThreadPoolExecutor(0, 1, 30L, timeUnit, new LinkedBlockingQueue(), bVar);
    }

    /* JADX WARN: Finally extract failed */
    public final void a(boolean z4) {
        C0707a c0707aB;
        synchronized (f8081m) {
            try {
                W1.g gVar = this.f8082a;
                gVar.a();
                v vVarD = v.d(gVar.f2823a);
                try {
                    c0707aB = this.f8084c.b();
                    int i5 = c0707aB.f8267b;
                    if (i5 == 2 || i5 == 1) {
                        String strF = f(c0707aB);
                        m2.b bVar = this.f8084c;
                        K3.b bVarA = c0707aB.a();
                        bVarA.f1287b = strF;
                        bVarA.b(3);
                        c0707aB = bVarA.a();
                        bVar.a(c0707aB);
                    }
                    if (vVarD != null) {
                        vVarD.B();
                    }
                } catch (Throwable th) {
                    if (vVarD != null) {
                        vVarD.B();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z4) {
            K3.b bVarA2 = c0707aB.a();
            bVarA2.f1289d = null;
            c0707aB = bVarA2.a();
        }
        i(c0707aB);
        this.f8089i.execute(new RunnableC0643b(this, z4));
    }

    public final C0707a b(C0707a c0707a) {
        int responseCode;
        n2.b bVarF;
        W1.g gVar = this.f8082a;
        gVar.a();
        String str = gVar.f2825c.f2830a;
        String str2 = c0707a.f8266a;
        W1.g gVar2 = this.f8082a;
        gVar2.a();
        String str3 = gVar2.f2825c.f2835g;
        String str4 = c0707a.f8269d;
        n2.c cVar = this.f8083b;
        n2.d dVar = cVar.f8328d;
        if (!dVar.a()) {
            throw new e("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = n2.c.a("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i5 = 0; i5 <= 1; i5++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionC = cVar.c(urlA, str);
            try {
                try {
                    httpURLConnectionC.setRequestMethod(IDMNetworkInterface.IDM_HTTP_METHOD_POST);
                    httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionC.setDoOutput(true);
                    n2.c.h(httpURLConnectionC);
                    responseCode = httpURLConnectionC.getResponseCode();
                    dVar.b(responseCode);
                } catch (Throwable th) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
            } catch (IOException | AssertionError unused) {
            }
            if (responseCode >= 200 && responseCode < 300) {
                bVarF = n2.c.f(httpURLConnectionC);
            } else {
                n2.c.b(httpURLConnectionC, null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    A.d dVarA = n2.b.a();
                    dVarA.f10a = 3;
                    bVarF = dVarA.b();
                } else {
                    if (responseCode == 429) {
                        throw new e("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        A.d dVarA2 = n2.b.a();
                        dVarA2.f10a = 2;
                        bVarF = dVarA2.b();
                    }
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            }
            httpURLConnectionC.disconnect();
            TrafficStats.clearThreadStatsTag();
            int iF = Q0.f(bVarF.f8323c);
            if (iF == 0) {
                j jVar = this.f8085d;
                jVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                jVar.f8101a.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                K3.b bVarA = c0707a.a();
                bVarA.f1289d = bVarF.f8321a;
                bVarA.f = Long.valueOf(bVarF.f8322b);
                bVarA.f1291g = Long.valueOf(seconds);
                return bVarA.a();
            }
            if (iF == 1) {
                K3.b bVarA2 = c0707a.a();
                bVarA2.f1292h = "BAD CONFIG";
                bVarA2.b(5);
                return bVarA2.a();
            }
            if (iF != 2) {
                throw new e("Firebase Installations Service is unavailable. Please try again later.");
            }
            synchronized (this) {
                this.f8090j = null;
            }
            K3.b bVarA3 = c0707a.a();
            bVarA3.b(2);
            return bVarA3.a();
        }
        throw new e("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final n c() {
        String str;
        e();
        synchronized (this) {
            str = this.f8090j;
        }
        if (str != null) {
            return AbstractC0739a.j(str);
        }
        u1.i iVar = new u1.i();
        g gVar = new g(iVar);
        synchronized (this.f8087g) {
            this.f8092l.add(gVar);
        }
        n nVar = iVar.f9320a;
        this.f8088h.execute(new D1.b(24, this));
        return nVar;
    }

    public final n d() {
        e();
        u1.i iVar = new u1.i();
        f fVar = new f(this.f8085d, iVar);
        synchronized (this.f8087g) {
            this.f8092l.add(fVar);
        }
        this.f8088h.execute(new RunnableC0643b(0, this));
        return iVar.f9320a;
    }

    public final void e() {
        W1.g gVar = this.f8082a;
        gVar.a();
        AbstractC0213D.d(gVar.f2825c.f2831b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        AbstractC0213D.d(gVar.f2825c.f2835g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        AbstractC0213D.d(gVar.f2825c.f2830a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        String str = gVar.f2825c.f2831b;
        Pattern pattern = j.f8099c;
        AbstractC0213D.a("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", str.contains(":"));
        gVar.a();
        AbstractC0213D.a("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.", j.f8099c.matcher(gVar.f2825c.f2830a).matches());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String f(C0707a c0707a) {
        String string;
        W1.g gVar = this.f8082a;
        gVar.a();
        if (!gVar.f2824b.equals("CHIME_ANDROID_SDK")) {
            W1.g gVar2 = this.f8082a;
            gVar2.a();
            if ("[DEFAULT]".equals(gVar2.f2824b)) {
                if (c0707a.f8267b == 1) {
                    m2.b bVar = this.f8086e;
                    synchronized (((SharedPreferences) bVar.f8273a)) {
                        try {
                            synchronized (((SharedPreferences) bVar.f8273a)) {
                                string = ((SharedPreferences) bVar.f8273a).getString("|S|id", null);
                            }
                            if (string == null) {
                                string = bVar.c();
                            }
                        } finally {
                        }
                    }
                    if (!TextUtils.isEmpty(string)) {
                        return string;
                    }
                    this.f.getClass();
                    return h.a();
                }
            }
        }
        this.f.getClass();
        return h.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2, types: [n2.c] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [n2.a] */
    public final C0707a g(C0707a c0707a) {
        int responseCode;
        String str = c0707a.f8266a;
        int i5 = 0;
        String string = null;
        if (str != null && str.length() == 11) {
            m2.b bVar = this.f8086e;
            synchronized (((SharedPreferences) bVar.f8273a)) {
                try {
                    String[] strArr = m2.b.f8272c;
                    int i6 = 0;
                    while (true) {
                        if (i6 < 4) {
                            String str2 = strArr[i6];
                            String string2 = ((SharedPreferences) bVar.f8273a).getString("|T|" + ((String) bVar.f8274b) + "|" + str2, null);
                            if (string2 == null || string2.isEmpty()) {
                                i6++;
                            } else if (string2.startsWith("{")) {
                                try {
                                    string = new JSONObject(string2).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                string = string2;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        n2.c cVar = this.f8083b;
        W1.g gVar = this.f8082a;
        gVar.a();
        String str3 = gVar.f2825c.f2830a;
        String str4 = c0707a.f8266a;
        W1.g gVar2 = this.f8082a;
        gVar2.a();
        String str5 = gVar2.f2825c.f2835g;
        W1.g gVar3 = this.f8082a;
        gVar3.a();
        String str6 = gVar3.f2825c.f2831b;
        n2.d dVar = cVar.f8328d;
        if (!dVar.a()) {
            throw new e("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = n2.c.a("projects/" + str5 + "/installations");
        C0710a c0710a = cVar;
        while (i5 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = c0710a.c(urlA, str3);
            try {
                try {
                    httpURLConnectionC.setRequestMethod(IDMNetworkInterface.IDM_HTTP_METHOD_POST);
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    n2.c.g(httpURLConnectionC, str4, str6);
                    responseCode = httpURLConnectionC.getResponseCode();
                    dVar.b(responseCode);
                } finally {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused2) {
            }
            if (responseCode < 200 || responseCode >= 300) {
                try {
                    n2.c.b(httpURLConnectionC, str6, str3, str5);
                } catch (IOException | AssertionError unused3) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i5++;
                    c0710a = c0710a;
                }
                if (responseCode == 429) {
                    throw new e("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                }
                if (responseCode < 500 || responseCode >= 600) {
                    Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                    C0710a c0710a2 = new C0710a(null, null, null, null, 2);
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    c0710a = c0710a2;
                } else {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i5++;
                    c0710a = c0710a;
                }
            } else {
                C0710a c0710aE = n2.c.e(httpURLConnectionC);
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
                c0710a = c0710aE;
            }
            int iF = Q0.f(c0710a.f8320e);
            if (iF != 0) {
                if (iF != 1) {
                    throw new e("Firebase Installations Service is unavailable. Please try again later.");
                }
                K3.b bVarA = c0707a.a();
                bVarA.f1292h = "BAD CONFIG";
                bVarA.b(5);
                return bVarA.a();
            }
            String str7 = c0710a.f8317b;
            String str8 = c0710a.f8318c;
            j jVar = this.f8085d;
            jVar.getClass();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            jVar.f8101a.getClass();
            long seconds = timeUnit.toSeconds(System.currentTimeMillis());
            n2.b bVar2 = c0710a.f8319d;
            String str9 = bVar2.f8321a;
            long j3 = bVar2.f8322b;
            K3.b bVarA2 = c0707a.a();
            bVarA2.f1287b = str7;
            bVarA2.b(4);
            bVarA2.f1289d = str9;
            bVarA2.f1290e = str8;
            bVarA2.f = Long.valueOf(j3);
            bVarA2.f1291g = Long.valueOf(seconds);
            return bVarA2.a();
        }
        throw new e("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void h(Exception exc) {
        synchronized (this.f8087g) {
            try {
                Iterator it = this.f8092l.iterator();
                while (it.hasNext()) {
                    if (((i) it.next()).b(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(C0707a c0707a) {
        synchronized (this.f8087g) {
            try {
                Iterator it = this.f8092l.iterator();
                while (it.hasNext()) {
                    if (((i) it.next()).a(c0707a)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
