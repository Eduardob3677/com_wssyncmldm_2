package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import i1.ThreadFactoryC0478a;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: classes.dex */
public final class D implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6207a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f6208b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f6209c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f6210d;

    /* renamed from: e, reason: collision with root package name */
    public B f6211e;
    public boolean f;

    public D(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(0, new ThreadFactoryC0478a("Firebase-FirebaseInstanceIdServiceConnection"));
        this.f6210d = new ArrayDeque();
        this.f = false;
        Context applicationContext = context.getApplicationContext();
        this.f6207a = applicationContext;
        this.f6208b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f6209c = scheduledThreadPoolExecutor;
    }

    public final synchronized void a() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.f6210d.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                B b3 = this.f6211e;
                if (b3 == null || !b3.isBinderAlive()) {
                    b();
                    return;
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f6211e.a((C) this.f6210d.poll());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        Context context;
        Intent intent;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z4 = this.f;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z4);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.f) {
            return;
        }
        this.f = true;
        try {
            g1.a aVarA = g1.a.a();
            context = this.f6207a;
            intent = this.f6208b;
            aVarA.getClass();
            context.getClass();
        } catch (SecurityException e5) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e5);
        }
        if (g1.a.b(context, intent, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f = false;
        while (true) {
            ArrayDeque arrayDeque = this.f6210d;
            if (arrayDeque.isEmpty()) {
                return;
            } else {
                ((C) arrayDeque.poll()).f6206b.d(null);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: ".concat(String.valueOf(componentName)));
            }
            this.f = false;
            if (iBinder instanceof B) {
                this.f6211e = (B) iBinder;
                a();
            } else {
                Log.e("FirebaseMessaging", "Invalid service connection: ".concat(String.valueOf(iBinder)));
                while (true) {
                    ArrayDeque arrayDeque = this.f6210d;
                    if (arrayDeque.isEmpty()) {
                        return;
                    } else {
                        ((C) arrayDeque.poll()).f6206b.d(null);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: ".concat(String.valueOf(componentName)));
        }
        a();
    }
}
