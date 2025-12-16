package com.google.firebase.messaging;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import i1.ThreadFactoryC0478a;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final long f6269c;

    /* renamed from: d, reason: collision with root package name */
    public final PowerManager.WakeLock f6270d;

    /* renamed from: e, reason: collision with root package name */
    public final FirebaseMessaging f6271e;

    public t(FirebaseMessaging firebaseMessaging, long j3) {
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0478a("firebase-iid-executor"));
        this.f6271e = firebaseMessaging;
        this.f6269c = j3;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) firebaseMessaging.f6217b.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f6270d = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    public final boolean a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f6271e.f6217b.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final boolean b() throws IOException {
        try {
            if (this.f6271e.a() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            }
            Log.d("FirebaseMessaging", "Token successfully retrieved");
            return true;
        } catch (IOException e5) {
            String message = e5.getMessage();
            if (!"SERVICE_NOT_AVAILABLE".equals(message) && !"INTERNAL_SERVER_ERROR".equals(message) && !"InternalServerError".equals(message)) {
                if (e5.getMessage() != null) {
                    throw e5;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message2 = e5.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message2).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message2);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseMessaging", sb.toString());
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        p pVarY = p.y();
        FirebaseMessaging firebaseMessaging = this.f6271e;
        boolean zA = pVarY.A(firebaseMessaging.f6217b);
        PowerManager.WakeLock wakeLock = this.f6270d;
        if (zA) {
            wakeLock.acquire();
        }
        try {
            try {
                synchronized (firebaseMessaging) {
                    firebaseMessaging.f6222h = true;
                }
                if (!firebaseMessaging.f6221g.d()) {
                    synchronized (firebaseMessaging) {
                        firebaseMessaging.f6222h = false;
                    }
                    if (p.y().A(firebaseMessaging.f6217b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (p.y().z(firebaseMessaging.f6217b) && !a()) {
                    s sVar = new s();
                    sVar.f6268b = this;
                    sVar.a();
                    if (p.y().A(firebaseMessaging.f6217b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (b()) {
                    synchronized (firebaseMessaging) {
                        firebaseMessaging.f6222h = false;
                    }
                } else {
                    firebaseMessaging.i(this.f6269c);
                }
                if (p.y().A(firebaseMessaging.f6217b)) {
                    wakeLock.release();
                }
            } catch (IOException e5) {
                String message = e5.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseMessaging", sb.toString());
                synchronized (firebaseMessaging) {
                    firebaseMessaging.f6222h = false;
                    if (p.y().A(firebaseMessaging.f6217b)) {
                        wakeLock.release();
                    }
                }
            }
        } catch (Throwable th) {
            if (p.y().A(firebaseMessaging.f6217b)) {
                wakeLock.release();
            }
            throw th;
        }
    }
}
