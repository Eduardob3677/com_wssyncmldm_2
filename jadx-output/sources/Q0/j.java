package Q0;

import J.r0;
import K0.l;
import K0.m;
import K0.n;
import K0.o;
import K0.p;
import K0.t;
import K0.u;
import K0.v;
import K0.w;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.idm.network.IDMNetworkInterface;
import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.lib.episode.EternalContract;
import h0.AbstractC0432c;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2192a;

    /* renamed from: b, reason: collision with root package name */
    public final M0.f f2193b;

    /* renamed from: c, reason: collision with root package name */
    public final R0.c f2194c;

    /* renamed from: d, reason: collision with root package name */
    public final d f2195d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f2196e;
    public final S0.c f;

    /* renamed from: g, reason: collision with root package name */
    public final T0.b f2197g;

    public j(Context context, M0.f fVar, R0.c cVar, d dVar, Executor executor, S0.c cVar2, T0.b bVar) {
        this.f2192a = context;
        this.f2193b = fVar;
        this.f2194c = cVar;
        this.f2195d = dVar;
        this.f2196e = executor;
        this.f = cVar2;
        this.f2197g = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x04d2 A[Catch: IOException -> 0x050d, TryCatch #12 {IOException -> 0x050d, blocks: (B:98:0x0370, B:107:0x03cd, B:181:0x04cc, B:183:0x04d2, B:186:0x04e9, B:191:0x04fe, B:193:0x0504, B:201:0x0518, B:202:0x0521, B:109:0x03da, B:122:0x0411, B:139:0x042e, B:138:0x042b, B:140:0x042f, B:177:0x049b, B:180:0x04b9, B:134:0x0425, B:110:0x03de, B:112:0x03e8, B:117:0x0408, B:132:0x0422, B:131:0x041f, B:115:0x03f0, B:127:0x0419), top: B:228:0x0370, inners: #7, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04e9 A[Catch: IOException -> 0x050d, TryCatch #12 {IOException -> 0x050d, blocks: (B:98:0x0370, B:107:0x03cd, B:181:0x04cc, B:183:0x04d2, B:186:0x04e9, B:191:0x04fe, B:193:0x0504, B:201:0x0518, B:202:0x0521, B:109:0x03da, B:122:0x0411, B:139:0x042e, B:138:0x042b, B:140:0x042f, B:177:0x049b, B:180:0x04b9, B:134:0x0425, B:110:0x03de, B:112:0x03e8, B:117:0x0408, B:132:0x0422, B:131:0x041f, B:115:0x03f0, B:127:0x0419), top: B:228:0x0370, inners: #7, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0504 A[Catch: IOException -> 0x050d, TryCatch #12 {IOException -> 0x050d, blocks: (B:98:0x0370, B:107:0x03cd, B:181:0x04cc, B:183:0x04d2, B:186:0x04e9, B:191:0x04fe, B:193:0x0504, B:201:0x0518, B:202:0x0521, B:109:0x03da, B:122:0x0411, B:139:0x042e, B:138:0x042b, B:140:0x042f, B:177:0x049b, B:180:0x04b9, B:134:0x0425, B:110:0x03de, B:112:0x03e8, B:117:0x0408, B:132:0x0422, B:131:0x041f, B:115:0x03f0, B:127:0x0419), top: B:228:0x0370, inners: #7, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04fd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final L0.b bVar, final int i5) throws Throwable {
        M0.a aVar;
        Iterable iterable;
        R0.h hVar;
        String str;
        final M0.a aVar2;
        int i6;
        J0.c cVar;
        J0.b bVar2;
        r0 r0Var;
        URL url;
        int i7;
        String str2;
        Integer numValueOf;
        J3.c cVar2;
        M0.g gVarA = this.f2193b.a(bVar.f1314a);
        h hVar2 = new h(this, bVar);
        R0.h hVar3 = (R0.h) this.f;
        Iterable iterable2 = (Iterable) hVar3.m(hVar2);
        if (iterable2.iterator().hasNext()) {
            if (gVarA == null) {
                W1.a.t("Uploader", "Unknown backend for %s, deleting event batch for it...", bVar);
                aVar2 = new M0.a(3, -1L);
                iterable = iterable2;
                hVar = hVar3;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((R0.b) it.next()).f2278c);
                }
                J0.c cVar3 = (J0.c) gVarA;
                HashMap map = new HashMap();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    L0.a aVar3 = (L0.a) it2.next();
                    String str3 = aVar3.f1309a;
                    if (map.containsKey(str3)) {
                        ((List) map.get(str3)).add(aVar3);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(aVar3);
                        map.put(str3, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it3 = map.entrySet().iterator();
                while (true) {
                    boolean z4 = false;
                    if (it3.hasNext()) {
                        Map.Entry entry = (Map.Entry) it3.next();
                        L0.a aVar4 = (L0.a) ((List) entry.getValue()).get(0);
                        w wVar = w.f1276c;
                        long jA = cVar3.f.a();
                        long jA2 = cVar3.f1040e.a();
                        K0.j jVar = new K0.j(p.f1270c, new K0.h(Integer.valueOf(aVar4.b("sdk-version")), aVar4.a("model"), aVar4.a("hardware"), aVar4.a(KnoxContract.Config.Device.ID), aVar4.a("product"), aVar4.a("os-uild"), aVar4.a(EternalContract.EXTRA_MANUFACTURER), aVar4.a("fingerprint"), aVar4.a("locale"), aVar4.a("country"), aVar4.a("mcc_mnc"), aVar4.a("application_build")));
                        try {
                            numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                            str2 = null;
                        } catch (NumberFormatException unused) {
                            str2 = (String) entry.getKey();
                            numValueOf = null;
                        }
                        ArrayList arrayList4 = new ArrayList();
                        for (L0.a aVar5 : (List) entry.getValue()) {
                            L0.f fVar = aVar5.f1311c;
                            I0.b bVar3 = fVar.f1322a;
                            Iterator it4 = it3;
                            boolean zEquals = bVar3.equals(new I0.b("proto"));
                            byte[] bArr = fVar.f1323b;
                            if (zEquals) {
                                cVar2 = new J3.c();
                                cVar2.f1140g = bArr;
                            } else if (bVar3.equals(new I0.b("json"))) {
                                String str4 = new String(bArr, Charset.forName("UTF-8"));
                                J3.c cVar4 = new J3.c();
                                cVar4.f1141h = str4;
                                cVar2 = cVar4;
                            } else {
                                Log.w("TransportRuntime.".concat("CctTransportBackend"), "Received event of unsupported encoding " + bVar3 + ". Skipping...");
                                it3 = it4;
                            }
                            cVar2.f1138d = Long.valueOf(aVar5.f1312d);
                            cVar2.f = Long.valueOf(aVar5.f1313e);
                            String str5 = (String) aVar5.f.get("tz-offset");
                            cVar2.f1142i = Long.valueOf(str5 == null ? 0L : Long.valueOf(str5).longValue());
                            cVar2.f1143j = new n((u) u.f1274c.get(aVar5.b("net-type")), (t) t.f1272c.get(aVar5.b("mobile-subtype")));
                            Integer num = aVar5.f1310b;
                            if (num != null) {
                                cVar2.f1139e = num;
                            }
                            String strH = ((Long) cVar2.f1138d) == null ? " eventTimeMs" : "";
                            if (((Long) cVar2.f) == null) {
                                strH = strH.concat(" eventUptimeMs");
                            }
                            if (((Long) cVar2.f1142i) == null) {
                                strH = AbstractC0432c.h(strH, " timezoneOffsetSeconds");
                            }
                            if (!strH.isEmpty()) {
                                throw new IllegalStateException("Missing required properties:".concat(strH));
                            }
                            arrayList4.add(new K0.k(((Long) cVar2.f1138d).longValue(), (Integer) cVar2.f1139e, ((Long) cVar2.f).longValue(), (byte[]) cVar2.f1140g, (String) cVar2.f1141h, ((Long) cVar2.f1142i).longValue(), (v) cVar2.f1143j));
                            it3 = it4;
                        }
                        arrayList3.add(new l(jA, jA2, jVar, numValueOf, str2, arrayList4, wVar));
                        it3 = it3;
                    } else {
                        K0.i iVar = new K0.i(arrayList3);
                        byte[] bArr2 = bVar.f1315b;
                        URL urlB = cVar3.f1039d;
                        if (bArr2 != null) {
                            try {
                                J0.a aVarA = J0.a.a(bArr2);
                                str = aVarA.f1032b;
                                if (str == null) {
                                    str = null;
                                }
                                String str6 = aVarA.f1031a;
                                if (str6 != null) {
                                    urlB = J0.c.b(str6);
                                }
                            } catch (IllegalArgumentException unused2) {
                                aVar = new M0.a(3, -1L);
                                iterable = iterable2;
                                hVar = hVar3;
                            }
                        } else {
                            str = null;
                        }
                        try {
                            r0 r0Var2 = new r0(urlB, iVar, str);
                            int i8 = 5;
                            while (true) {
                                W1.a.t("CctTransportBackend", "Making request to: %s", (URL) r0Var2.f1006c);
                                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URL) r0Var2.f1006c).openConnection();
                                httpURLConnection.setConnectTimeout(30000);
                                httpURLConnection.setReadTimeout(cVar3.f1041g);
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setInstanceFollowRedirects(z4);
                                httpURLConnection.setRequestMethod(IDMNetworkInterface.IDM_HTTP_METHOD_POST);
                                httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.0.0 android/");
                                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                                httpURLConnection.setRequestProperty(IDMNetworkInterface.IDM_HTTP_HEADER_CONTENT_TYPE, "application/json");
                                httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                                String str7 = (String) r0Var2.f1008e;
                                if (str7 != null) {
                                    httpURLConnection.setRequestProperty("X-Goog-Api-Key", str7);
                                }
                                try {
                                    OutputStream outputStream = httpURLConnection.getOutputStream();
                                    try {
                                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                                        try {
                                            c1.w wVar2 = cVar3.f1036a;
                                            try {
                                                o oVar = (o) r0Var2.f1007d;
                                                cVar = cVar3;
                                                try {
                                                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                                                    try {
                                                        g2.d dVar = (g2.d) wVar2.f5265c;
                                                        hVar = hVar3;
                                                        try {
                                                            iterable = iterable2;
                                                            try {
                                                                i6 = i8;
                                                                try {
                                                                    g2.e eVar = new g2.e(bufferedWriter, dVar.f6923a, dVar.f6924b, dVar.f6925c, dVar.f6926d);
                                                                    eVar.f(oVar);
                                                                    eVar.h();
                                                                    eVar.f6928b.flush();
                                                                    try {
                                                                        gZIPOutputStream.close();
                                                                        if (outputStream != null) {
                                                                            try {
                                                                                outputStream.close();
                                                                            } catch (e2.b | IOException e5) {
                                                                                e = e5;
                                                                                Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't encode request, returning with 400", e);
                                                                                bVar2 = new J0.b(400, null, 0L);
                                                                                r0Var = null;
                                                                                url = (URL) bVar2.f1035c;
                                                                                if (url != null) {
                                                                                }
                                                                                if (r0Var2 == null) {
                                                                                }
                                                                                int i9 = bVar2.f1033a;
                                                                                if (i9 == 200) {
                                                                                }
                                                                                aVar2 = aVar;
                                                                                final Iterable iterable3 = iterable;
                                                                                hVar.m(new S0.b() { // from class: Q0.i
                                                                                    @Override // S0.b
                                                                                    public final Object execute() {
                                                                                        SQLiteDatabase sQLiteDatabaseG;
                                                                                        Boolean bool;
                                                                                        j jVar2 = this.f2188c;
                                                                                        jVar2.getClass();
                                                                                        M0.a aVar6 = aVar2;
                                                                                        int i10 = aVar6.f1810a;
                                                                                        Iterable iterable4 = iterable3;
                                                                                        final L0.b bVar4 = bVar;
                                                                                        d dVar2 = jVar2.f2195d;
                                                                                        R0.c cVar5 = jVar2.f2194c;
                                                                                        if (i10 == 2) {
                                                                                            R0.h hVar4 = (R0.h) cVar5;
                                                                                            hVar4.getClass();
                                                                                            if (iterable4.iterator().hasNext()) {
                                                                                                String str8 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + R0.h.n(iterable4);
                                                                                                sQLiteDatabaseG = hVar4.g();
                                                                                                sQLiteDatabaseG.beginTransaction();
                                                                                                try {
                                                                                                    sQLiteDatabaseG.compileStatement(str8).execute();
                                                                                                    sQLiteDatabaseG.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                                                                                    sQLiteDatabaseG.setTransactionSuccessful();
                                                                                                } finally {
                                                                                                }
                                                                                            }
                                                                                            dVar2.a(bVar4, i5 + 1, false);
                                                                                            return null;
                                                                                        }
                                                                                        R0.h hVar5 = (R0.h) cVar5;
                                                                                        hVar5.getClass();
                                                                                        if (iterable4.iterator().hasNext()) {
                                                                                            hVar5.g().compileStatement("DELETE FROM events WHERE _id in " + R0.h.n(iterable4)).execute();
                                                                                        }
                                                                                        if (aVar6.f1810a == 1) {
                                                                                            final long jA3 = jVar2.f2197g.a() + aVar6.f1811b;
                                                                                            hVar5.l(new R0.f() { // from class: R0.e
                                                                                                @Override // R0.f
                                                                                                public final Object apply(Object obj) {
                                                                                                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                                                                                    ContentValues contentValues = new ContentValues();
                                                                                                    contentValues.put("next_request_ms", Long.valueOf(jA3));
                                                                                                    L0.b bVar5 = bVar4;
                                                                                                    String str9 = bVar5.f1314a;
                                                                                                    I0.c cVar6 = bVar5.f1316c;
                                                                                                    if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str9, String.valueOf(U0.a.a(cVar6))}) < 1) {
                                                                                                        contentValues.put("backend_name", bVar5.f1314a);
                                                                                                        contentValues.put("priority", Integer.valueOf(U0.a.a(cVar6)));
                                                                                                        sQLiteDatabase.insert("transport_contexts", null, contentValues);
                                                                                                    }
                                                                                                    return null;
                                                                                                }
                                                                                            });
                                                                                        }
                                                                                        sQLiteDatabaseG = hVar5.g();
                                                                                        sQLiteDatabaseG.beginTransaction();
                                                                                        try {
                                                                                            Long lH = R0.h.h(sQLiteDatabaseG, bVar4);
                                                                                            if (lH == null) {
                                                                                                bool = Boolean.FALSE;
                                                                                            } else {
                                                                                                Cursor cursorRawQuery = hVar5.g().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lH.toString()});
                                                                                                try {
                                                                                                    Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                                                                                    cursorRawQuery.close();
                                                                                                    bool = boolValueOf;
                                                                                                } catch (Throwable th) {
                                                                                                    cursorRawQuery.close();
                                                                                                    throw th;
                                                                                                }
                                                                                            }
                                                                                            sQLiteDatabaseG.setTransactionSuccessful();
                                                                                            sQLiteDatabaseG.endTransaction();
                                                                                            if (!bool.booleanValue()) {
                                                                                                return null;
                                                                                            }
                                                                                            dVar2.a(bVar4, 1, true);
                                                                                            return null;
                                                                                        } finally {
                                                                                        }
                                                                                    }
                                                                                });
                                                                            } catch (ConnectException | UnknownHostException e6) {
                                                                                e = e6;
                                                                                Log.e("TransportRuntime.".concat("CctTransportBackend"), "Couldn't open connection, returning with 500", e);
                                                                                r0Var = null;
                                                                                bVar2 = new J0.b(500, null, 0L);
                                                                                url = (URL) bVar2.f1035c;
                                                                                if (url != null) {
                                                                                }
                                                                                if (r0Var2 == null) {
                                                                                }
                                                                                int i92 = bVar2.f1033a;
                                                                                if (i92 == 200) {
                                                                                }
                                                                                aVar2 = aVar;
                                                                                final Iterable iterable32 = iterable;
                                                                                hVar.m(new S0.b() { // from class: Q0.i
                                                                                    @Override // S0.b
                                                                                    public final Object execute() {
                                                                                        SQLiteDatabase sQLiteDatabaseG;
                                                                                        Boolean bool;
                                                                                        j jVar2 = this.f2188c;
                                                                                        jVar2.getClass();
                                                                                        M0.a aVar6 = aVar2;
                                                                                        int i10 = aVar6.f1810a;
                                                                                        Iterable iterable4 = iterable32;
                                                                                        final L0.b bVar4 = bVar;
                                                                                        d dVar2 = jVar2.f2195d;
                                                                                        R0.c cVar5 = jVar2.f2194c;
                                                                                        if (i10 == 2) {
                                                                                            R0.h hVar4 = (R0.h) cVar5;
                                                                                            hVar4.getClass();
                                                                                            if (iterable4.iterator().hasNext()) {
                                                                                                String str8 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + R0.h.n(iterable4);
                                                                                                sQLiteDatabaseG = hVar4.g();
                                                                                                sQLiteDatabaseG.beginTransaction();
                                                                                                try {
                                                                                                    sQLiteDatabaseG.compileStatement(str8).execute();
                                                                                                    sQLiteDatabaseG.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                                                                                    sQLiteDatabaseG.setTransactionSuccessful();
                                                                                                } finally {
                                                                                                }
                                                                                            }
                                                                                            dVar2.a(bVar4, i5 + 1, false);
                                                                                            return null;
                                                                                        }
                                                                                        R0.h hVar5 = (R0.h) cVar5;
                                                                                        hVar5.getClass();
                                                                                        if (iterable4.iterator().hasNext()) {
                                                                                            hVar5.g().compileStatement("DELETE FROM events WHERE _id in " + R0.h.n(iterable4)).execute();
                                                                                        }
                                                                                        if (aVar6.f1810a == 1) {
                                                                                            final long jA3 = jVar2.f2197g.a() + aVar6.f1811b;
                                                                                            hVar5.l(new R0.f() { // from class: R0.e
                                                                                                @Override // R0.f
                                                                                                public final Object apply(Object obj) {
                                                                                                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                                                                                    ContentValues contentValues = new ContentValues();
                                                                                                    contentValues.put("next_request_ms", Long.valueOf(jA3));
                                                                                                    L0.b bVar5 = bVar4;
                                                                                                    String str9 = bVar5.f1314a;
                                                                                                    I0.c cVar6 = bVar5.f1316c;
                                                                                                    if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str9, String.valueOf(U0.a.a(cVar6))}) < 1) {
                                                                                                        contentValues.put("backend_name", bVar5.f1314a);
                                                                                                        contentValues.put("priority", Integer.valueOf(U0.a.a(cVar6)));
                                                                                                        sQLiteDatabase.insert("transport_contexts", null, contentValues);
                                                                                                    }
                                                                                                    return null;
                                                                                                }
                                                                                            });
                                                                                        }
                                                                                        sQLiteDatabaseG = hVar5.g();
                                                                                        sQLiteDatabaseG.beginTransaction();
                                                                                        try {
                                                                                            Long lH = R0.h.h(sQLiteDatabaseG, bVar4);
                                                                                            if (lH == null) {
                                                                                                bool = Boolean.FALSE;
                                                                                            } else {
                                                                                                Cursor cursorRawQuery = hVar5.g().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lH.toString()});
                                                                                                try {
                                                                                                    Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                                                                                    cursorRawQuery.close();
                                                                                                    bool = boolValueOf;
                                                                                                } catch (Throwable th) {
                                                                                                    cursorRawQuery.close();
                                                                                                    throw th;
                                                                                                }
                                                                                            }
                                                                                            sQLiteDatabaseG.setTransactionSuccessful();
                                                                                            sQLiteDatabaseG.endTransaction();
                                                                                            if (!bool.booleanValue()) {
                                                                                                return null;
                                                                                            }
                                                                                            dVar2.a(bVar4, 1, true);
                                                                                            return null;
                                                                                        } finally {
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                        }
                                                                        try {
                                                                            int responseCode = httpURLConnection.getResponseCode();
                                                                            Log.i("TransportRuntime.".concat("CctTransportBackend"), "Status Code: " + responseCode);
                                                                            Log.i("TransportRuntime.".concat("CctTransportBackend"), "Content-Type: " + httpURLConnection.getHeaderField(IDMNetworkInterface.IDM_HTTP_HEADER_CONTENT_TYPE));
                                                                            Log.i("TransportRuntime.".concat("CctTransportBackend"), "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                                                                            if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                                                                                bVar2 = new J0.b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                                                                            } else if (responseCode != 200) {
                                                                                bVar2 = new J0.b(responseCode, null, 0L);
                                                                            } else {
                                                                                InputStream inputStream = httpURLConnection.getInputStream();
                                                                                try {
                                                                                    InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                                                                                    try {
                                                                                        bVar2 = new J0.b(responseCode, null, m.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f1267a);
                                                                                        if (gZIPInputStream != null) {
                                                                                            gZIPInputStream.close();
                                                                                        }
                                                                                        if (inputStream != null) {
                                                                                            inputStream.close();
                                                                                        }
                                                                                    } catch (Throwable th) {
                                                                                        if (gZIPInputStream == null) {
                                                                                            throw th;
                                                                                        }
                                                                                        try {
                                                                                            gZIPInputStream.close();
                                                                                            throw th;
                                                                                        } catch (Throwable th2) {
                                                                                            th.addSuppressed(th2);
                                                                                            throw th;
                                                                                        }
                                                                                    }
                                                                                } finally {
                                                                                }
                                                                            }
                                                                        } catch (IOException e7) {
                                                                            e = e7;
                                                                            Log.e("TransportRuntime.".concat("CctTransportBackend"), "Could not make request to the backend", e);
                                                                            aVar = new M0.a(2, -1L);
                                                                            aVar2 = aVar;
                                                                            final Iterable iterable322 = iterable;
                                                                            hVar.m(new S0.b() { // from class: Q0.i
                                                                                @Override // S0.b
                                                                                public final Object execute() {
                                                                                    SQLiteDatabase sQLiteDatabaseG;
                                                                                    Boolean bool;
                                                                                    j jVar2 = this.f2188c;
                                                                                    jVar2.getClass();
                                                                                    M0.a aVar6 = aVar2;
                                                                                    int i10 = aVar6.f1810a;
                                                                                    Iterable iterable4 = iterable322;
                                                                                    final L0.b bVar4 = bVar;
                                                                                    d dVar2 = jVar2.f2195d;
                                                                                    R0.c cVar5 = jVar2.f2194c;
                                                                                    if (i10 == 2) {
                                                                                        R0.h hVar4 = (R0.h) cVar5;
                                                                                        hVar4.getClass();
                                                                                        if (iterable4.iterator().hasNext()) {
                                                                                            String str8 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + R0.h.n(iterable4);
                                                                                            sQLiteDatabaseG = hVar4.g();
                                                                                            sQLiteDatabaseG.beginTransaction();
                                                                                            try {
                                                                                                sQLiteDatabaseG.compileStatement(str8).execute();
                                                                                                sQLiteDatabaseG.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                                                                                sQLiteDatabaseG.setTransactionSuccessful();
                                                                                            } finally {
                                                                                            }
                                                                                        }
                                                                                        dVar2.a(bVar4, i5 + 1, false);
                                                                                        return null;
                                                                                    }
                                                                                    R0.h hVar5 = (R0.h) cVar5;
                                                                                    hVar5.getClass();
                                                                                    if (iterable4.iterator().hasNext()) {
                                                                                        hVar5.g().compileStatement("DELETE FROM events WHERE _id in " + R0.h.n(iterable4)).execute();
                                                                                    }
                                                                                    if (aVar6.f1810a == 1) {
                                                                                        final long jA3 = jVar2.f2197g.a() + aVar6.f1811b;
                                                                                        hVar5.l(new R0.f() { // from class: R0.e
                                                                                            @Override // R0.f
                                                                                            public final Object apply(Object obj) {
                                                                                                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                                                                                ContentValues contentValues = new ContentValues();
                                                                                                contentValues.put("next_request_ms", Long.valueOf(jA3));
                                                                                                L0.b bVar5 = bVar4;
                                                                                                String str9 = bVar5.f1314a;
                                                                                                I0.c cVar6 = bVar5.f1316c;
                                                                                                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str9, String.valueOf(U0.a.a(cVar6))}) < 1) {
                                                                                                    contentValues.put("backend_name", bVar5.f1314a);
                                                                                                    contentValues.put("priority", Integer.valueOf(U0.a.a(cVar6)));
                                                                                                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                                                                                                }
                                                                                                return null;
                                                                                            }
                                                                                        });
                                                                                    }
                                                                                    sQLiteDatabaseG = hVar5.g();
                                                                                    sQLiteDatabaseG.beginTransaction();
                                                                                    try {
                                                                                        Long lH = R0.h.h(sQLiteDatabaseG, bVar4);
                                                                                        if (lH == null) {
                                                                                            bool = Boolean.FALSE;
                                                                                        } else {
                                                                                            Cursor cursorRawQuery = hVar5.g().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lH.toString()});
                                                                                            try {
                                                                                                Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                                                                                cursorRawQuery.close();
                                                                                                bool = boolValueOf;
                                                                                            } catch (Throwable th3) {
                                                                                                cursorRawQuery.close();
                                                                                                throw th3;
                                                                                            }
                                                                                        }
                                                                                        sQLiteDatabaseG.setTransactionSuccessful();
                                                                                        sQLiteDatabaseG.endTransaction();
                                                                                        if (!bool.booleanValue()) {
                                                                                            return null;
                                                                                        }
                                                                                        dVar2.a(bVar4, 1, true);
                                                                                        return null;
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                            });
                                                                        }
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        Throwable th4 = th;
                                                                        if (outputStream != null) {
                                                                            try {
                                                                                outputStream.close();
                                                                            } catch (Throwable th5) {
                                                                                th4.addSuppressed(th5);
                                                                            }
                                                                        }
                                                                        throw th4;
                                                                    }
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    Throwable th7 = th;
                                                                    try {
                                                                        gZIPOutputStream.close();
                                                                    } catch (Throwable th8) {
                                                                        th7.addSuppressed(th8);
                                                                    }
                                                                    throw th7;
                                                                }
                                                            } catch (Throwable th9) {
                                                                th = th9;
                                                                i6 = i8;
                                                            }
                                                        } catch (Throwable th10) {
                                                            th = th10;
                                                            i6 = i8;
                                                            iterable = iterable2;
                                                        }
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        i6 = i8;
                                                        iterable = iterable2;
                                                        hVar = hVar3;
                                                        Throwable th72 = th;
                                                        gZIPOutputStream.close();
                                                        throw th72;
                                                    }
                                                } catch (Throwable th12) {
                                                    th = th12;
                                                    i6 = i8;
                                                    iterable = iterable2;
                                                }
                                            } catch (Throwable th13) {
                                                th = th13;
                                                i6 = i8;
                                                iterable = iterable2;
                                                cVar = cVar3;
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            i6 = i8;
                                            iterable = iterable2;
                                            cVar = cVar3;
                                        }
                                    } catch (Throwable th15) {
                                        th = th15;
                                        i6 = i8;
                                        iterable = iterable2;
                                        cVar = cVar3;
                                        hVar = hVar3;
                                    }
                                } catch (e2.b | IOException e8) {
                                    e = e8;
                                    i6 = i8;
                                    iterable = iterable2;
                                    cVar = cVar3;
                                    hVar = hVar3;
                                } catch (ConnectException | UnknownHostException e9) {
                                    e = e9;
                                    i6 = i8;
                                    iterable = iterable2;
                                    cVar = cVar3;
                                    hVar = hVar3;
                                }
                                r0Var = null;
                                url = (URL) bVar2.f1035c;
                                if (url != null) {
                                    W1.a.t("CctTransportBackend", "Following redirect to: %s", url);
                                    r0Var2 = new r0(url, (o) r0Var2.f1007d, (String) r0Var2.f1008e);
                                } else {
                                    r0Var2 = r0Var;
                                }
                                if (r0Var2 == null) {
                                    i7 = 1;
                                    break;
                                }
                                int i10 = i6 - 1;
                                i7 = 1;
                                if (i10 < 1) {
                                    break;
                                }
                                i8 = i10;
                                cVar3 = cVar;
                                hVar3 = hVar;
                                iterable2 = iterable;
                                z4 = false;
                            }
                            int i922 = bVar2.f1033a;
                            aVar = i922 == 200 ? new M0.a(i7, bVar2.f1034b) : (i922 >= 500 || i922 == 404) ? new M0.a(2, -1L) : new M0.a(3, -1L);
                        } catch (IOException e10) {
                            e = e10;
                            iterable = iterable2;
                            hVar = hVar3;
                        }
                        aVar2 = aVar;
                    }
                }
            }
            final Iterable iterable3222 = iterable;
            hVar.m(new S0.b() { // from class: Q0.i
                @Override // S0.b
                public final Object execute() {
                    SQLiteDatabase sQLiteDatabaseG;
                    Boolean bool;
                    j jVar2 = this.f2188c;
                    jVar2.getClass();
                    M0.a aVar6 = aVar2;
                    int i102 = aVar6.f1810a;
                    Iterable iterable4 = iterable3222;
                    final L0.b bVar4 = bVar;
                    d dVar2 = jVar2.f2195d;
                    R0.c cVar5 = jVar2.f2194c;
                    if (i102 == 2) {
                        R0.h hVar4 = (R0.h) cVar5;
                        hVar4.getClass();
                        if (iterable4.iterator().hasNext()) {
                            String str8 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + R0.h.n(iterable4);
                            sQLiteDatabaseG = hVar4.g();
                            sQLiteDatabaseG.beginTransaction();
                            try {
                                sQLiteDatabaseG.compileStatement(str8).execute();
                                sQLiteDatabaseG.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                sQLiteDatabaseG.setTransactionSuccessful();
                            } finally {
                            }
                        }
                        dVar2.a(bVar4, i5 + 1, false);
                        return null;
                    }
                    R0.h hVar5 = (R0.h) cVar5;
                    hVar5.getClass();
                    if (iterable4.iterator().hasNext()) {
                        hVar5.g().compileStatement("DELETE FROM events WHERE _id in " + R0.h.n(iterable4)).execute();
                    }
                    if (aVar6.f1810a == 1) {
                        final long jA3 = jVar2.f2197g.a() + aVar6.f1811b;
                        hVar5.l(new R0.f() { // from class: R0.e
                            @Override // R0.f
                            public final Object apply(Object obj) {
                                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("next_request_ms", Long.valueOf(jA3));
                                L0.b bVar5 = bVar4;
                                String str9 = bVar5.f1314a;
                                I0.c cVar6 = bVar5.f1316c;
                                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str9, String.valueOf(U0.a.a(cVar6))}) < 1) {
                                    contentValues.put("backend_name", bVar5.f1314a);
                                    contentValues.put("priority", Integer.valueOf(U0.a.a(cVar6)));
                                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                                }
                                return null;
                            }
                        });
                    }
                    sQLiteDatabaseG = hVar5.g();
                    sQLiteDatabaseG.beginTransaction();
                    try {
                        Long lH = R0.h.h(sQLiteDatabaseG, bVar4);
                        if (lH == null) {
                            bool = Boolean.FALSE;
                        } else {
                            Cursor cursorRawQuery = hVar5.g().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lH.toString()});
                            try {
                                Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                cursorRawQuery.close();
                                bool = boolValueOf;
                            } catch (Throwable th32) {
                                cursorRawQuery.close();
                                throw th32;
                            }
                        }
                        sQLiteDatabaseG.setTransactionSuccessful();
                        sQLiteDatabaseG.endTransaction();
                        if (!bool.booleanValue()) {
                            return null;
                        }
                        dVar2.a(bVar4, 1, true);
                        return null;
                    } finally {
                    }
                }
            });
        }
    }
}
