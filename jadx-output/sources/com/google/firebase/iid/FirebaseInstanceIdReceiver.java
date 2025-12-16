package com.google.firebase.iid;

import W1.a;
import Y0.i;
import Y0.j;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceIdReceiver;
import com.google.firebase.messaging.g;
import i1.ThreadFactoryC0478a;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p0.AbstractC0739a;
import u1.n;

/* loaded from: classes.dex */
public final class FirebaseInstanceIdReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f6200a;

    public FirebaseInstanceIdReceiver() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0478a("firebase-iid-executor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f6200a = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    public static int a(Context context, Intent intent) {
        int i5;
        n nVarC;
        int iIntValue = 500;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            nVarC = AbstractC0739a.j(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            j jVarB = j.b(context);
            synchronized (jVarB) {
                i5 = jVarB.f2905c;
                jVarB.f2905c = i5 + 1;
            }
            nVarC = jVarB.c(new i(i5, 2, bundle, 0));
        }
        try {
            iIntValue = ((Integer) AbstractC0739a.a(new g(context, 0).j(intent))).intValue();
        } catch (InterruptedException | ExecutionException e5) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e5);
        }
        try {
            AbstractC0739a.b(nVarC, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e6) {
            String strValueOf = String.valueOf(e6);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
            sb.append("Message ack failed: ");
            sb.append(strValueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return iIntValue;
    }

    public static int b(Intent intent) throws PendingIntent.CanceledException {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if (!"com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
        Intent intentPutExtras = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(extras);
        if (!a.l0(intentPutExtras)) {
            return -1;
        }
        a.Y(intentPutExtras.getExtras(), "_nd");
        return -1;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean zIsOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        this.f6200a.execute(new Runnable() { // from class: Y0.f
            @Override // java.lang.Runnable
            public final void run() {
                Intent intent2 = intent;
                BroadcastReceiver.PendingResult pendingResult = pendingResultGoAsync;
                this.f2888c.getClass();
                try {
                    Parcelable parcelableExtra = intent2.getParcelableExtra("wrapped_intent");
                    Intent intent3 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
                    int iB = intent3 != null ? FirebaseInstanceIdReceiver.b(intent3) : FirebaseInstanceIdReceiver.a(context, intent2);
                    if (zIsOrderedBroadcast) {
                        pendingResult.setResultCode(iB);
                    }
                } finally {
                    pendingResult.finish();
                }
            }
        });
    }
}
