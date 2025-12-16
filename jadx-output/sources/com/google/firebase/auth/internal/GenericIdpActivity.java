package com.google.firebase.auth.internal;

import A3.D;
import B.f;
import W1.g;
import a2.j;
import a2.k;
import a2.m;
import a2.n;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.fragment.app.G;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0296l4;
import com.google.android.gms.internal.p000firebaseauthapi.M3;
import com.google.android.gms.internal.p000firebaseauthapi.N3;
import com.google.android.gms.internal.p000firebaseauthapi.N4;
import d0.C0386a;
import f1.AbstractC0420a;
import h0.AbstractC0432c;
import h1.AbstractC0443a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.C0713b;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GenericIdpActivity extends G implements N3 {

    /* renamed from: e, reason: collision with root package name */
    public static long f6194e;
    public static final k f = k.f3057b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f6195c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6196d;

    public GenericIdpActivity() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f6195c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f6196d = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c1, code lost:
    
        r13 = r13.toCharArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c5, code lost:
    
        if (r14 >= r11) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c7, code lost:
    
        r15 = r13[r14];
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c9, code lost:
    
        if (r15 < 'A') goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cb, code lost:
    
        if (r15 > 'Z') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cd, code lost:
    
        r13[r14] = (char) (r15 ^ ' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d2, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
    
        r13 = java.lang.String.valueOf(r13);
     */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.N3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Uri.Builder b(Intent intent, String str, String str2) throws JSONException {
        String string;
        String str3;
        Uri.Builder builderAppendPath = new Uri.Builder().scheme("https").appendPath("__").appendPath("auth").appendPath("handler");
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.KEY_PROVIDER_ID");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.KEY_TENANT_ID");
        String stringExtra4 = intent.getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME");
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("com.google.firebase.auth.KEY_PROVIDER_SCOPES");
        String strJoin = (stringArrayListExtra == null || stringArrayListExtra.isEmpty()) ? null : TextUtils.join(",", stringArrayListExtra);
        Bundle bundleExtra = intent.getBundleExtra("com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS");
        if (bundleExtra == null) {
            string = null;
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str4 : bundleExtra.keySet()) {
                    String string2 = bundleExtra.getString(str4);
                    if (!TextUtils.isEmpty(string2)) {
                        jSONObject.put(str4, string2);
                    }
                }
            } catch (JSONException unused) {
                Log.e("GenericIdpActivity", "Unexpected JSON exception when serializing developer specified custom params");
            }
            string = jSONObject.toString();
        }
        String string3 = UUID.randomUUID().toString();
        try {
            str3 = new String(MessageDigest.getInstance("SHA-256").digest(UUID.randomUUID().toString().getBytes()));
            int length = str3.length();
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    break;
                }
                char cCharAt = str3.charAt(i5);
                if (cCharAt >= 'A' && cCharAt <= 'Z') {
                    break;
                }
                i5++;
            }
        } catch (NoSuchAlgorithmException unused2) {
            N3.f5435b.e("Failed to get SHA-256 MessageDigest", new Object[0]);
            str3 = null;
        }
        String action = intent.getAction();
        String stringExtra5 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        n nVar = n.f3063a;
        Context applicationContext = getApplicationContext();
        String str5 = string;
        String str6 = strJoin;
        synchronized (nVar) {
            AbstractC0213D.c(str);
            AbstractC0213D.c(string3);
            AbstractC0213D.c(str3);
            AbstractC0213D.c(stringExtra4);
            SharedPreferences sharedPreferencesB = n.b(applicationContext, str);
            n.a(sharedPreferencesB);
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".SESSION_ID", str3);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".OPERATION", action);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".PROVIDER_ID", stringExtra2);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".FIREBASE_APP_NAME", stringExtra4);
            editorEdit.putString("com.google.firebase.auth.api.gms.config.tenant.id", stringExtra3);
            editorEdit.apply();
        }
        String strR0 = D.P0(getApplicationContext(), g.e(stringExtra4).f()).R0();
        if (TextUtils.isEmpty(strR0)) {
            Log.e("GenericIdpActivity", "Could not generate an encryption key for Generic IDP - cancelling flow.");
            k(AbstractC0420a.t0("Failed to generate/retrieve public encryption key for Generic IDP flow."));
        } else if (str3 != null) {
            Uri.Builder builderAppendQueryParameter = builderAppendPath.appendQueryParameter("eid", "p");
            String strValueOf = String.valueOf(stringExtra5);
            builderAppendQueryParameter.appendQueryParameter("v", strValueOf.length() != 0 ? "X".concat(strValueOf) : new String("X")).appendQueryParameter("authType", "signInWithRedirect").appendQueryParameter("apiKey", stringExtra).appendQueryParameter("providerId", stringExtra2).appendQueryParameter("sessionId", str3).appendQueryParameter("eventId", string3).appendQueryParameter("apn", str).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", strR0);
            if (!TextUtils.isEmpty(str6)) {
                builderAppendPath.appendQueryParameter("scopes", str6);
            }
            if (!TextUtils.isEmpty(str5)) {
                builderAppendPath.appendQueryParameter("customParameters", str5);
            }
            if (TextUtils.isEmpty(stringExtra3)) {
                return builderAppendPath;
            }
            builderAppendPath.appendQueryParameter("tid", stringExtra3);
            return builderAppendPath;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.N3
    public final String c(String str) {
        return AbstractC0296l4.a(str);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.N3
    public final void d(Status status) {
        if (status == null) {
            j();
        } else {
            k(status);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.N3
    public final HttpURLConnection e(URL url) {
        try {
            return (HttpURLConnection) url.openConnection();
        } catch (IOException unused) {
            Log.e("GenericIdpActivity", "Error generating URL connection");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.N3
    public final void f(Uri uri, String str) {
        if (getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW"), 0) == null) {
            Log.e("GenericIdpActivity", "Device cannot resolve intent for: android.intent.action.VIEW");
            d(null);
            return;
        }
        List<ResolveInfo> listQueryIntentServices = getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.putExtra("com.android.browser.application_id", str);
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
        intent2.putExtras(bundle);
        intent2.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent2.addFlags(1073741824);
        intent2.addFlags(268435456);
        intent2.setData(uri);
        startActivity(intent2, null);
    }

    public final void j() {
        f6194e = 0L;
        this.f6196d = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        C0386a.a(this).b(intent);
        Status statusT0 = AbstractC0420a.t0("WEB_CONTEXT_CANCELED");
        f.getClass();
        k.a(this, statusT0);
        finish();
    }

    public final void k(Status status) {
        f6194e = 0L;
        this.f6196d = false;
        Intent intent = new Intent();
        HashMap map = j.f3056a;
        Parcel parcelObtain = Parcel.obtain();
        status.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        intent.putExtra("com.google.firebase.auth.internal.STATUS", bArrMarshall);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        C0386a.a(this).b(intent);
        Context applicationContext = getApplicationContext();
        f.getClass();
        k.a(applicationContext, status);
        finish();
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(action) && !"android.intent.action.VIEW".equals(action)) {
            String strValueOf = String.valueOf(action);
            Log.e("GenericIdpActivity", strValueOf.length() != 0 ? "Could not do operation - unknown action: ".concat(strValueOf) : new String("Could not do operation - unknown action: "));
            j();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f6194e < 30000) {
            Log.e("GenericIdpActivity", "Could not start operation - already in progress");
            return;
        }
        f6194e = jCurrentTimeMillis;
        if (bundle != null) {
            this.f6196d = bundle.getBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public final void onResume() {
        String lowerCase;
        g gVarE;
        C0713b c0713b;
        m mVar;
        super.onResume();
        if (!"android.intent.action.VIEW".equals(getIntent().getAction())) {
            if (this.f6196d) {
                j();
                return;
            }
            String packageName = getPackageName();
            try {
                lowerCase = AbstractC0443a.a(AbstractC0443a.c(this, packageName)).toLowerCase(Locale.US);
                gVarE = g.e(getIntent().getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME"));
                c0713b = AbstractC0296l4.f5642a;
                gVarE.a();
            } catch (PackageManager.NameNotFoundException e5) {
                String strValueOf = String.valueOf(e5);
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 34 + strValueOf.length());
                sb.append("Could not get package signature: ");
                sb.append(packageName);
                sb.append(" ");
                sb.append(strValueOf);
                Log.e("GenericIdpActivity", sb.toString());
                d(null);
            }
            if (!c0713b.containsKey(gVarE.f2825c.f2830a)) {
                new M3(packageName, lowerCase, getIntent(), this).executeOnExecutor(this.f6195c, new Void[0]);
                this.f6196d = true;
                return;
            } else {
                gVarE.a();
                String str = gVarE.f2825c.f2830a;
                synchronized (c0713b) {
                    f.F(c0713b.getOrDefault(str, null));
                }
                throw new IllegalStateException("Tried to get the emulator widget endpoint, but no emulator endpoint overrides found.");
            }
        }
        Intent intent = getIntent();
        if (intent.hasExtra("firebaseError")) {
            k(j.a(intent.getStringExtra("firebaseError")));
            return;
        }
        if (!intent.hasExtra("link") || !intent.hasExtra("eventId")) {
            j();
            return;
        }
        String stringExtra = intent.getStringExtra("link");
        String stringExtra2 = intent.getStringExtra("eventId");
        String packageName2 = getPackageName();
        boolean booleanExtra = intent.getBooleanExtra("encryptionEnabled", true);
        synchronized (n.f3063a) {
            AbstractC0213D.c(packageName2);
            AbstractC0213D.c(stringExtra2);
            SharedPreferences sharedPreferencesB = n.b(this, packageName2);
            String str2 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".SESSION_ID";
            String str3 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".OPERATION";
            String str4 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".PROVIDER_ID";
            String str5 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".FIREBASE_APP_NAME";
            String string = sharedPreferencesB.getString(str2, null);
            String string2 = sharedPreferencesB.getString(str3, null);
            String string3 = sharedPreferencesB.getString(str4, null);
            String string4 = sharedPreferencesB.getString("com.google.firebase.auth.api.gms.config.tenant.id", null);
            String string5 = sharedPreferencesB.getString(str5, null);
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.remove(str2);
            editorEdit.remove(str3);
            editorEdit.remove(str4);
            editorEdit.remove(str5);
            editorEdit.apply();
            mVar = (string == null || string2 == null || string3 == null) ? null : new m(string, string2, string3, string4, string5);
        }
        if (mVar == null) {
            j();
        }
        if (booleanExtra) {
            stringExtra = D.P0(getApplicationContext(), g.e(mVar.f3062g).f()).Q0(stringExtra);
        }
        N4 n42 = new N4();
        AbstractC0213D.e(mVar);
        String str6 = mVar.f3059c;
        AbstractC0213D.c(str6);
        n42.n = str6;
        AbstractC0213D.c(stringExtra);
        n42.f5446o = stringExtra;
        String str7 = mVar.f3061e;
        AbstractC0213D.c(str7);
        n42.f5439g = str7;
        n42.f5443k = true;
        n42.f5441i = AbstractC0432c.i("providerId=", str7);
        String str8 = mVar.f;
        String str9 = mVar.f3060d;
        n42.f5447p = str8;
        if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(str9) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(str9) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(str9)) {
            Log.e("GenericIdpActivity", str9.length() != 0 ? "unsupported operation: ".concat(str9) : new String("unsupported operation: "));
            j();
            return;
        }
        f6194e = 0L;
        this.f6196d = false;
        Intent intent2 = new Intent();
        Parcel parcelObtain = Parcel.obtain();
        n42.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        intent2.putExtra("com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST", bArrMarshall);
        intent2.putExtra("com.google.firebase.auth.internal.OPERATION", str9);
        intent2.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        C0386a.a(this).b(intent2);
        SharedPreferences.Editor editorEdit2 = getApplicationContext().getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        Parcel parcelObtain2 = Parcel.obtain();
        n42.writeToParcel(parcelObtain2, 0);
        byte[] bArrMarshall2 = parcelObtain2.marshall();
        parcelObtain2.recycle();
        editorEdit2.putString("verifyAssertionRequest", bArrMarshall2 != null ? Base64.encodeToString(bArrMarshall2, 10) : null);
        editorEdit2.putString("operation", str9);
        editorEdit2.putString("tenantId", str8);
        editorEdit2.putLong("timestamp", System.currentTimeMillis());
        editorEdit2.commit();
        finish();
    }

    @Override // androidx.activity.ComponentActivity, y.h, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN", this.f6196d);
    }
}
