package n2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import c1.AbstractC0213D;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.network.IDMNetworkInterface;
import h0.AbstractC0432c;
import h1.AbstractC0443a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import k.Q0;
import k2.InterfaceC0638a;
import l2.e;
import org.json.JSONException;
import org.json.JSONObject;
import s2.C0836b;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f8324e = Pattern.compile("[0-9]+s");
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    public final Context f8325a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0638a f8326b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0638a f8327c;

    /* renamed from: d, reason: collision with root package name */
    public final d f8328d = new d();

    public c(Context context, InterfaceC0638a interfaceC0638a, InterfaceC0638a interfaceC0638a2) {
        this.f8325a = context;
        this.f8326b = interfaceC0638a;
        this.f8327c = interfaceC0638a2;
    }

    public static URL a(String str) throws e {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/" + str);
        } catch (MalformedURLException e5) {
            throw new e(e5.getMessage());
        }
    }

    public static void b(HttpURLConnection httpURLConnection, String str, String str2, String str3) throws IOException {
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        Log.w("Firebase-Installations", str4);
        Log.w("Firebase-Installations", "Firebase options used while communicating with Firebase server APIs: " + str2 + ", " + str3 + (TextUtils.isEmpty(str) ? "" : AbstractC0432c.i(", ", str)));
    }

    public static long d(String str) {
        AbstractC0213D.a("Invalid Expiration Timestamp.", f8324e.matcher(str).matches());
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    public static C0710a e(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f));
        A.d dVarA = b.a();
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        String strNextString3 = null;
        b bVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("name")) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals("fid")) {
                strNextString2 = jsonReader.nextString();
            } else if (strNextName.equals("refreshToken")) {
                strNextString3 = jsonReader.nextString();
            } else if (strNextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if (strNextName2.equals("token")) {
                        dVarA.f11b = jsonReader.nextString();
                    } else if (strNextName2.equals("expiresIn")) {
                        dVarA.f12c = Long.valueOf(d(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                b bVarB = dVarA.b();
                jsonReader.endObject();
                bVar = bVarB;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new C0710a(strNextString, strNextString2, strNextString3, bVar, 1);
    }

    public static b f(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f));
        A.d dVarA = b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("token")) {
                dVarA.f11b = jsonReader.nextString();
            } else if (strNextName.equals("expiresIn")) {
                dVarA.f12c = Long.valueOf(d(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        dVarA.f10a = 1;
        return dVarA.b();
    }

    public static void g(HttpURLConnection httpURLConnection, String str, String str2) throws JSONException, IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put(ActionInfoDao.IDM_DB_ACTIONINFO_APPID, str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.0.0");
            i(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static void h(HttpURLConnection httpURLConnection) throws JSONException, IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            i(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static void i(URLConnection uRLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public final HttpURLConnection c(URL url, String str) throws NoSuchAlgorithmException, e {
        int iA;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(IDMCallbackStatusInterface.IDM_RESULTS);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(IDMCallbackStatusInterface.IDM_RESULTS);
            httpURLConnection.addRequestProperty(IDMNetworkInterface.IDM_HTTP_HEADER_CONTENT_TYPE, "application/json");
            httpURLConnection.addRequestProperty(IDMNetworkInterface.IDM_HTTP_HEADER_ACCEPT, "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty(IDMNetworkInterface.IDM_HTTP_CACHE_CONTROL, "no-cache");
            Context context = this.f8325a;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            InterfaceC0638a interfaceC0638a = this.f8327c;
            if (interfaceC0638a.get() != null) {
                InterfaceC0638a interfaceC0638a2 = this.f8326b;
                if (interfaceC0638a2.get() != null && (iA = ((i2.b) interfaceC0638a.get()).a("fire-installations-id")) != 1) {
                    httpURLConnection.addRequestProperty("x-firebase-client", ((C0836b) interfaceC0638a2.get()).a());
                    httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(Q0.f(iA)));
                }
            }
            String strA = null;
            try {
                byte[] bArrC = AbstractC0443a.c(context, context.getPackageName());
                if (bArrC == null) {
                    Log.e("ContentValues", "Could not get fingerprint hash for package: " + context.getPackageName());
                } else {
                    strA = AbstractC0443a.a(bArrC);
                }
            } catch (PackageManager.NameNotFoundException e5) {
                Log.e("ContentValues", "No such package: " + context.getPackageName(), e5);
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", strA);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new e("Firebase Installations Service is unavailable. Please try again later.");
        }
    }
}
