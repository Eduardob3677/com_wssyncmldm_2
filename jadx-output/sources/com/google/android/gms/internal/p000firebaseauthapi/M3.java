package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import B.f;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import com.idm.network.IDMNetworkInterface;
import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.lib.episode.EternalContract;
import f1.AbstractC0420a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class M3 extends AsyncTask {
    public static final d f = new d("FirebaseAuth", "GetAuthDomainTask");

    /* renamed from: a, reason: collision with root package name */
    public final String f5427a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5428b;

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f5429c;

    /* renamed from: d, reason: collision with root package name */
    public final Uri.Builder f5430d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5431e;

    public M3(String str, String str2, Intent intent, N3 n32) {
        AbstractC0213D.c(str);
        this.f5427a = str;
        AbstractC0213D.c(str2);
        AbstractC0213D.e(intent);
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        AbstractC0213D.c(stringExtra);
        Uri.Builder builderBuildUpon = Uri.parse(n32.c(stringExtra)).buildUpon();
        Uri.Builder builderAppendQueryParameter = builderBuildUpon.appendPath("getProjectConfig").appendQueryParameter(KnoxContract.KEY, stringExtra).appendQueryParameter("androidPackageName", str);
        AbstractC0213D.e(str2);
        builderAppendQueryParameter.appendQueryParameter("sha1Cert", str2);
        this.f5428b = builderBuildUpon.build().toString();
        this.f5429c = new WeakReference(n32);
        this.f5430d = n32.b(intent, str, str2);
        this.f5431e = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int i5 = inputStream.read(bArr);
                if (i5 == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i5);
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(L3 l32) {
        String str;
        String str2;
        Uri.Builder builder;
        N3 n32 = (N3) this.f5429c.get();
        if (l32 != null) {
            str = l32.f5421a;
            str2 = l32.f5422b;
        } else {
            str = null;
            str2 = null;
        }
        if (n32 == null) {
            f.e("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (TextUtils.isEmpty(str) || (builder = this.f5430d) == null) {
            n32.d(AbstractC0420a.t0(str2));
        } else {
            builder.authority(str);
            n32.f(builder.build(), this.f5427a);
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws IOException {
        HttpURLConnection httpURLConnectionE;
        int responseCode;
        String str;
        d dVar = f;
        String str2 = this.f5431e;
        if (!TextUtils.isEmpty(str2)) {
            L3 l32 = new L3();
            l32.f5421a = str2;
            return l32;
        }
        try {
            try {
                URL url = new URL(this.f5428b);
                N3 n32 = (N3) this.f5429c.get();
                httpURLConnectionE = n32.e(url);
                httpURLConnectionE.addRequestProperty(IDMNetworkInterface.IDM_HTTP_HEADER_CONTENT_TYPE, "application/json; charset=UTF-8");
                httpURLConnectionE.setConnectTimeout(EternalContract.ONEUI_6_0_0);
                new C0230a4(n32.a(), "X" + Integer.toString(new Z3(Z3.a()).f5498a)).d(httpURLConnectionE);
                responseCode = httpURLConnectionE.getResponseCode();
            } catch (IOException e5) {
                String strValueOf = String.valueOf(e5);
                dVar.e(f.w(new StringBuilder(strValueOf.length() + 22), "IOException occurred: ", strValueOf), new Object[0]);
            }
        } catch (C0360w3 e6) {
            String strValueOf2 = String.valueOf(e6);
            dVar.e(f.w(new StringBuilder(strValueOf2.length() + 33), "ConversionException encountered: ", strValueOf2), new Object[0]);
        } catch (NullPointerException e7) {
            String strValueOf3 = String.valueOf(e7);
            dVar.e(f.w(new StringBuilder(strValueOf3.length() + 26), "Null pointer encountered: ", strValueOf3), new Object[0]);
        }
        if (responseCode == 200) {
            C0308n4 c0308n4 = new C0308n4(1);
            c0308n4.c(new String(b(httpURLConnectionE.getInputStream())));
            Iterator it = ((ArrayList) c0308n4.f5662d).iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                if (str3.endsWith("firebaseapp.com") || str3.endsWith("web.app")) {
                    L3 l33 = new L3();
                    l33.f5421a = str3;
                    return l33;
                }
            }
            return null;
        }
        try {
        } catch (IOException e8) {
            String strValueOf4 = String.valueOf(e8);
            StringBuilder sb = new StringBuilder(strValueOf4.length() + 75);
            sb.append("Error parsing error message from response body in getErrorMessageFromBody. ");
            sb.append(strValueOf4);
            Log.w((String) dVar.f11b, dVar.f(sb.toString(), new Object[0]));
        }
        if (httpURLConnectionE.getResponseCode() >= 400) {
            InputStream errorStream = httpURLConnectionE.getErrorStream();
            str = errorStream == null ? "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again." : (String) AbstractC0332s.e(String.class, new String(b(errorStream)));
        } else {
            str = null;
        }
        dVar.e("Error getting project config. Failed with " + str + " " + responseCode, new Object[0]);
        L3 l34 = new L3();
        l34.f5422b = str;
        return l34;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onCancelled(Object obj) {
        onPostExecute(null);
    }
}
