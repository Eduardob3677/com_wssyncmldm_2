package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.idm.providers.mo.IDMMoInterface;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import o.C0713b;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: i, reason: collision with root package name */
    public static final long f6283i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f6284j = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Context f6285a;

    /* renamed from: b, reason: collision with root package name */
    public final l f6286b;

    /* renamed from: c, reason: collision with root package name */
    public final J3.d f6287c;

    /* renamed from: d, reason: collision with root package name */
    public final FirebaseMessaging f6288d;
    public final ScheduledExecutorService f;

    /* renamed from: h, reason: collision with root package name */
    public final v f6291h;

    /* renamed from: e, reason: collision with root package name */
    public final C0713b f6289e = new C0713b();

    /* renamed from: g, reason: collision with root package name */
    public boolean f6290g = false;

    public x(FirebaseMessaging firebaseMessaging, l lVar, v vVar, J3.d dVar, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f6288d = firebaseMessaging;
        this.f6286b = lVar;
        this.f6291h = vVar;
        this.f6287c = dVar;
        this.f6285a = context;
        this.f = scheduledExecutorService;
    }

    public static void a(u1.n nVar) throws IOException {
        try {
            AbstractC0739a.b(nVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e5) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e5);
        } catch (ExecutionException e6) {
            Throwable cause = e6.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e6);
            }
            throw ((RuntimeException) cause);
        }
    }

    public final void b(String str) throws IOException {
        String strA = this.f6288d.a();
        J3.d dVar = this.f6287c;
        dVar.getClass();
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        String strValueOf2 = String.valueOf(str);
        a(dVar.e(dVar.p(strA, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle)));
    }

    public final void c(String str) throws IOException {
        String strA = this.f6288d.a();
        J3.d dVar = this.f6287c;
        dVar.getClass();
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String strValueOf2 = String.valueOf(str);
        a(dVar.e(dVar.p(strA, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle)));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d() throws IOException {
        u uVarA;
        char c2;
        while (true) {
            synchronized (this) {
                try {
                    uVarA = this.f6291h.a();
                    if (uVarA == null) {
                        break;
                    }
                } finally {
                }
            }
            try {
                String str = uVarA.f6274b;
                int iHashCode = str.hashCode();
                if (iHashCode != 83) {
                    c2 = (iHashCode == 85 && str.equals("U")) ? (char) 1 : (char) 65535;
                } else if (str.equals("S")) {
                    c2 = 0;
                }
                String str2 = uVarA.f6273a;
                if (c2 == 0) {
                    b(str2);
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 31);
                        sb.append("Subscribe to topic: ");
                        sb.append(str2);
                        sb.append(" succeeded.");
                        Log.d("FirebaseMessaging", sb.toString());
                    }
                } else if (c2 == 1) {
                    c(str2);
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 35);
                        sb2.append("Unsubscribe from topic: ");
                        sb2.append(str2);
                        sb2.append(" succeeded.");
                        Log.d("FirebaseMessaging", sb2.toString());
                    }
                } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String string = uVarA.toString();
                    StringBuilder sb3 = new StringBuilder(string.length() + 24);
                    sb3.append("Unknown topic operation");
                    sb3.append(string);
                    sb3.append(IDMMoInterface.IDM_MO_ROOT_PATH);
                    Log.d("FirebaseMessaging", sb3.toString());
                }
                v vVar = this.f6291h;
                synchronized (vVar) {
                    D3.e eVar = vVar.f6277a;
                    String str3 = uVarA.f6275c;
                    synchronized (((ArrayDeque) eVar.f501g)) {
                        if (((ArrayDeque) eVar.f501g).remove(str3)) {
                            q qVar = new q(0);
                            qVar.f6262d = eVar;
                            ((Executor) eVar.f502h).execute(qVar);
                        }
                    }
                }
                synchronized (this.f6289e) {
                    try {
                        String str4 = uVarA.f6275c;
                        if (this.f6289e.containsKey(str4)) {
                            ArrayDeque arrayDeque = (ArrayDeque) this.f6289e.getOrDefault(str4, null);
                            u1.i iVar = (u1.i) arrayDeque.poll();
                            if (iVar != null) {
                                iVar.b(null);
                            }
                            if (arrayDeque.isEmpty()) {
                                this.f6289e.remove(str4);
                            }
                        }
                    } finally {
                    }
                }
            } catch (IOException e5) {
                if ("SERVICE_NOT_AVAILABLE".equals(e5.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e5.getMessage())) {
                    String message = e5.getMessage();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(message).length() + 53);
                    sb4.append("Topic operation failed: ");
                    sb4.append(message);
                    sb4.append(". Will retry Topic operation.");
                    Log.e("FirebaseMessaging", sb4.toString());
                } else {
                    if (e5.getMessage() != null) {
                        throw e5;
                    }
                    Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                }
                return false;
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "topic sync succeeded");
        }
        return true;
    }

    public final void e(long j3) {
        this.f.schedule(new z(this, this.f6285a, this.f6286b, Math.min(Math.max(30L, j3 + j3), f6283i)), j3, TimeUnit.SECONDS);
        synchronized (this) {
            this.f6290g = true;
        }
    }
}
