package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.O3;

/* loaded from: classes.dex */
public final class s extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6267a = 0;

    /* renamed from: b, reason: collision with root package name */
    public Object f6268b;

    public /* synthetic */ s() {
    }

    public void a() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Connectivity change received registered");
        }
        ((t) this.f6268b).f6271e.f6217b.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f6267a) {
            case 0:
                t tVar = (t) this.f6268b;
                if (tVar != null && tVar.a()) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                    }
                    t tVar2 = (t) this.f6268b;
                    tVar2.f6271e.getClass();
                    FirebaseMessaging.b(tVar2, 0L);
                    ((t) this.f6268b).f6271e.f6217b.unregisterReceiver(this);
                    this.f6268b = null;
                    break;
                }
                break;
            default:
                ((O3) this.f6268b).h();
                break;
        }
    }

    public s(O3 o32) {
        this.f6268b = o32;
    }
}
