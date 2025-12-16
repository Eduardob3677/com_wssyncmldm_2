package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class y extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public z f6292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f6293b;

    public y(z zVar, z zVar2) {
        this.f6293b = zVar;
        this.f6292a = zVar2;
    }

    public final void a() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Connectivity change received registered");
        }
        this.f6293b.f6297c.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final synchronized void onReceive(Context context, Intent intent) {
        try {
            z zVar = this.f6292a;
            if (zVar == null) {
                return;
            }
            if (zVar.d()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                z zVar2 = this.f6292a;
                zVar2.f.f.schedule(zVar2, 0L, TimeUnit.SECONDS);
                context.unregisterReceiver(this);
                this.f6292a = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
