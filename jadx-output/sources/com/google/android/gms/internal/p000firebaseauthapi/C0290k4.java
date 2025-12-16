package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import P1.e;
import R3.C0091m;
import V0.a;
import Y1.j;
import a1.c;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.firebase.auth.api.fallback.service.FirebaseAuthFallbackService;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;
import j1.C0554a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import m1.AbstractC0703a;
import m1.C0706d;
import u1.n;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.k4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0290k4 {

    /* renamed from: d, reason: collision with root package name */
    public static final d f5630d = new d("FirebaseAuth", "SmsRetrieverHelper");

    /* renamed from: a, reason: collision with root package name */
    public final Context f5631a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f5632b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5633c = new HashMap();

    public C0290k4(FirebaseAuthFallbackService firebaseAuthFallbackService) {
        AbstractC0213D.e(firebaseAuthFallbackService);
        this.f5631a = firebaseAuthFallbackService;
        this.f5632b = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }

    public static void b(C0290k4 c0290k4, String str) {
        C0284j4 c0284j4 = (C0284j4) c0290k4.f5633c.get(str);
        if (c0284j4 == null || AbstractC0332s.I(c0284j4.f5617d) || AbstractC0332s.I(c0284j4.f5618e)) {
            return;
        }
        ArrayList arrayList = c0284j4.f5615b;
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            G3 g32 = (G3) it.next();
            j jVar = new j(c0284j4.f5617d, c0284j4.f5618e, false, null, true, null, null);
            g32.getClass();
            try {
                g32.f5375a.p(jVar);
            } catch (RemoteException e5) {
                g32.f5376b.d("RemoteException when sending verification completed response.", e5, new Object[0]);
            }
        }
        c0284j4.f5620h = true;
    }

    public static String f(String str, String str2) throws NoSuchAlgorithmException {
        d dVar = f5630d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        String string = sb.toString();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(string.getBytes(AbstractC0366x3.f5782a));
            String strSubstring = Base64.encodeToString(Arrays.copyOf(messageDigest.digest(), 9), 3).substring(0, 11);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 19 + String.valueOf(strSubstring).length());
            sb2.append("Package: ");
            sb2.append(str);
            sb2.append(" -- Hash: ");
            sb2.append(strSubstring);
            String string2 = sb2.toString();
            Object[] objArr = new Object[0];
            if (dVar.f10a <= 3) {
                Log.d((String) dVar.f11b, dVar.f(string2, objArr));
            }
            return strSubstring;
        } catch (NoSuchAlgorithmException e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            dVar.e(strValueOf.length() != 0 ? "NoSuchAlgorithm: ".concat(strValueOf) : new String("NoSuchAlgorithm: "), new Object[0]);
            return null;
        }
    }

    public final String a() throws NoSuchAlgorithmException {
        d dVar = f5630d;
        Context context = this.f5631a;
        try {
            String packageName = context.getPackageName();
            String strF = f(packageName, C0554a.a(context).f1317a.getPackageManager().getPackageInfo(packageName, UcmAgentService.ERROR_APPLET_UNKNOWN).signingInfo.getApkContentsSigners()[0].toCharsString());
            if (strF != null) {
                return strF;
            }
            dVar.e("Hash generation failed.", new Object[0]);
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            dVar.e("Unable to find package to obtain hash.", new Object[0]);
            return null;
        }
    }

    public final void c(G3 g32, String str) {
        C0284j4 c0284j4 = (C0284j4) this.f5633c.get(str);
        if (c0284j4 == null) {
            return;
        }
        c0284j4.f5615b.add(g32);
        if (c0284j4.f5619g) {
            g32.a(c0284j4.f5617d);
        }
        boolean z4 = c0284j4.f5620h;
        d dVar = g32.f5376b;
        Q3 q32 = g32.f5375a;
        if (z4) {
            try {
                q32.p(new j(c0284j4.f5617d, c0284j4.f5618e, false, null, true, null, null));
            } catch (RemoteException e5) {
                dVar.d("RemoteException when sending verification completed response.", e5, new Object[0]);
            }
        }
        if (c0284j4.f5621i) {
            try {
                q32.n(c0284j4.f5617d);
            } catch (RemoteException e6) {
                dVar.d("RemoteException when sending auto retrieval timeout response.", e6, new Object[0]);
            }
        }
    }

    public final void d(String str) {
        HashMap map = this.f5633c;
        C0284j4 c0284j4 = (C0284j4) map.get(str);
        if (c0284j4 == null) {
            return;
        }
        ScheduledFuture scheduledFuture = c0284j4.f;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            c0284j4.f.cancel(false);
        }
        c0284j4.f5615b.clear();
        map.remove(str);
    }

    public final void e(final String str, G3 g32, long j3, boolean z4) {
        HashMap map = this.f5633c;
        map.put(str, new C0284j4(j3, z4));
        c(g32, str);
        C0284j4 c0284j4 = (C0284j4) map.get(str);
        long j5 = c0284j4.f5614a;
        d dVar = f5630d;
        if (j5 <= 0) {
            Log.w((String) dVar.f11b, dVar.f("Timeout of 0 specified; SmsRetriever will not start.", new Object[0]));
            return;
        }
        c0284j4.f = this.f5632b.schedule(new Runnable() { // from class: com.google.android.gms.internal.firebase-auth-api.g4
            @Override // java.lang.Runnable
            public final void run() {
                C0290k4 c0290k4 = this.f5584c;
                HashMap map2 = c0290k4.f5633c;
                String str2 = str;
                C0284j4 c0284j42 = (C0284j4) map2.get(str2);
                if (c0284j42 == null) {
                    return;
                }
                if (!c0284j42.f5621i) {
                    c0290k4.g(str2);
                }
                c0290k4.d(str2);
            }
        }, j5, TimeUnit.SECONDS);
        if (!c0284j4.f5616c) {
            Log.w((String) dVar.f11b, dVar.f("SMS auto-retrieval unavailable; SmsRetriever will not start.", new Object[0]));
            return;
        }
        C0278i4 c0278i4 = new C0278i4(this, str);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.gms.auth.api.phone.SMS_RETRIEVED");
        Context context = this.f5631a;
        context.getApplicationContext().registerReceiver(c0278i4, intentFilter);
        C0706d c0706d = new C0706d(context, a.f2783h, null, c.f3032b);
        C0091m c0091mC = C0091m.c();
        c0091mC.f2404b = new e(c0706d);
        c0091mC.f2405c = new Z0.c[]{AbstractC0703a.f8260a};
        n nVarB = c0706d.b(1, c0091mC.b());
        M m5 = new M(9);
        nVarB.getClass();
        nVarB.b(u1.j.f9321a, m5);
    }

    public final void g(String str) {
        C0284j4 c0284j4 = (C0284j4) this.f5633c.get(str);
        if (c0284j4 == null || c0284j4.f5620h || AbstractC0332s.I(c0284j4.f5617d)) {
            return;
        }
        d dVar = f5630d;
        Log.w((String) dVar.f11b, dVar.f("Timed out waiting for SMS.", new Object[0]));
        Iterator it = c0284j4.f5615b.iterator();
        while (it.hasNext()) {
            G3 g32 = (G3) it.next();
            String str2 = c0284j4.f5617d;
            g32.getClass();
            try {
                g32.f5375a.n(str2);
            } catch (RemoteException e5) {
                g32.f5376b.d("RemoteException when sending auto retrieval timeout response.", e5, new Object[0]);
            }
        }
        c0284j4.f5621i = true;
    }
}
