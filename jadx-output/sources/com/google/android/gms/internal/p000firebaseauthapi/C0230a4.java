package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import W1.g;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import b2.n;
import c1.AbstractC0213D;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.e;
import com.idm.network.IDMNetworkInterface;
import h2.b;
import java.net.HttpURLConnection;
import p2.C0742a;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.a4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0230a4 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5506a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5507b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5508c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5509d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5510e;

    public C0230a4(FirebaseMessaging firebaseMessaging, b bVar) {
        this.f5510e = firebaseMessaging;
        this.f5507b = bVar;
    }

    public synchronized void a() {
        try {
            if (this.f5506a) {
                return;
            }
            Boolean boolC = c();
            this.f5509d = boolC;
            if (boolC == null) {
                e eVar = new e(4);
                this.f5508c = eVar;
                ((n) ((b) this.f5507b)).a(eVar);
            }
            this.f5506a = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean b() {
        boolean z4;
        boolean zBooleanValue;
        try {
            a();
            Boolean bool = (Boolean) this.f5509d;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                g gVar = ((FirebaseMessaging) this.f5510e).f6216a;
                gVar.a();
                C0742a c0742a = (C0742a) gVar.f2828g.get();
                synchronized (c0742a) {
                    z4 = c0742a.f8577a;
                }
                zBooleanValue = z4;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zBooleanValue;
    }

    public Boolean c() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        g gVar = ((FirebaseMessaging) this.f5510e).f6216a;
        gVar.a();
        Context context = gVar.f2823a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
        if (sharedPreferences.contains("auto_init")) {
            return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public void d(HttpURLConnection httpURLConnection) {
        boolean z4 = this.f5506a;
        String str = (String) this.f5509d;
        String strW = z4 ? f.w(new StringBuilder(String.valueOf(str).length() + 19), str, "/FirebaseUI-Android") : f.w(new StringBuilder(String.valueOf(str).length() + 21), str, "/FirebaseCore-Android");
        if (((C0254e4) this.f5508c) == null) {
            Context context = (Context) this.f5507b;
            this.f5508c = new C0254e4(context, context.getPackageName());
        }
        httpURLConnection.setRequestProperty("X-Android-Package", ((C0254e4) this.f5508c).f5554d);
        httpURLConnection.setRequestProperty("X-Android-Cert", ((C0254e4) this.f5508c).f5555e);
        httpURLConnection.setRequestProperty(IDMNetworkInterface.IDM_HTTP_HEADER_ACCEPT_LANGUAGE, AbstractC0332s.f());
        httpURLConnection.setRequestProperty("X-Client-Version", strW);
        httpURLConnection.setRequestProperty("X-Firebase-Locale", (String) this.f5510e);
        this.f5510e = null;
    }

    public C0230a4(Context context, String str) {
        this.f5506a = false;
        AbstractC0213D.e(context);
        this.f5507b = context.getApplicationContext();
        this.f5509d = "Android/Fallback/".concat(str);
    }
}
