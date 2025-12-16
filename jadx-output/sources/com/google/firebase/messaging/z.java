package com.google.firebase.messaging;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: h, reason: collision with root package name */
    public static final Object f6294h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public static Boolean f6295i;

    /* renamed from: j, reason: collision with root package name */
    public static Boolean f6296j;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6297c;

    /* renamed from: d, reason: collision with root package name */
    public final l f6298d;

    /* renamed from: e, reason: collision with root package name */
    public final PowerManager.WakeLock f6299e;
    public final x f;

    /* renamed from: g, reason: collision with root package name */
    public final long f6300g;

    public z(x xVar, Context context, l lVar, long j3) {
        this.f = xVar;
        this.f6297c = context;
        this.f6300g = j3;
        this.f6298d = lVar;
        this.f6299e = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    public static boolean a(Context context) {
        boolean zBooleanValue;
        synchronized (f6294h) {
            try {
                Boolean bool = f6296j;
                Boolean boolValueOf = Boolean.valueOf(bool == null ? b(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
                f6296j = boolValueOf;
                zBooleanValue = boolValueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    public static boolean b(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z4 = context.checkCallingOrSelfPermission(str) == 0;
        if (z4 || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z4;
        }
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        Log.d("FirebaseMessaging", sb.toString());
        return false;
    }

    public static boolean c(Context context) {
        boolean zBooleanValue;
        synchronized (f6294h) {
            try {
                Boolean bool = f6295i;
                Boolean boolValueOf = Boolean.valueOf(bool == null ? b(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
                f6295i = boolValueOf;
                zBooleanValue = boolValueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    public final synchronized boolean d() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f6297c.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        x xVar = this.f;
        Context context = this.f6297c;
        boolean zC = c(context);
        PowerManager.WakeLock wakeLock = this.f6299e;
        if (zC) {
            wakeLock.acquire(AbstractC0381b.f6224a);
        }
        try {
            try {
                synchronized (xVar) {
                    xVar.f6290g = true;
                }
                if (!this.f6298d.d()) {
                    synchronized (xVar) {
                        xVar.f6290g = false;
                    }
                    if (c(context)) {
                        try {
                            wakeLock.release();
                            return;
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (a(context) && !d()) {
                    new y(this, this).a();
                    if (c(context)) {
                        try {
                            wakeLock.release();
                            return;
                        } catch (RuntimeException unused2) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (xVar.d()) {
                    synchronized (xVar) {
                        xVar.f6290g = false;
                    }
                } else {
                    xVar.e(this.f6300g);
                }
                if (c(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } catch (Throwable th) {
                if (c(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused4) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.e("FirebaseMessaging", strValueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(strValueOf) : new String("Failed to sync topics. Won't retry sync. "));
            synchronized (xVar) {
                xVar.f6290g = false;
                if (c(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused5) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            }
        }
    }
}
