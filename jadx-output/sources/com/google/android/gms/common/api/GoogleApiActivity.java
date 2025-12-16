package com.google.android.gms.common.api;

import Z0.a;
import Z0.e;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import b1.C0201g;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;

/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f5304d = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f5305c = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i5, int i6, Intent intent) {
        super.onActivityResult(i5, i6, intent);
        if (i5 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f5305c = 0;
            setResult(i6, intent);
            if (booleanExtra) {
                C0201g c0201gA = C0201g.a(this);
                if (i6 == -1) {
                    Q1 q12 = c0201gA.f5091i;
                    q12.sendMessage(q12.obtainMessage(3));
                } else if (i6 == 0) {
                    a aVar = new a(13, null);
                    int intExtra = getIntent().getIntExtra("failing_client_id", -1);
                    if (!c0201gA.c(aVar, intExtra)) {
                        Q1 q13 = c0201gA.f5091i;
                        q13.sendMessage(q13.obtainMessage(5, intExtra, 0, aVar));
                    }
                }
            }
        } else if (i5 == 2) {
            this.f5305c = 0;
            setResult(i6, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f5305c = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) throws IntentSender.SendIntentException {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f5305c = bundle.getInt("resolution");
        }
        if (this.f5305c != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
            } else {
                if (pendingIntent == null) {
                    e.f3005c.c(this, num.intValue(), this);
                    this.f5305c = 1;
                    return;
                }
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f5305c = 1;
                } catch (IntentSender.SendIntentException e5) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e5);
                    finish();
                }
            }
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f5305c);
        super.onSaveInstanceState(bundle);
    }
}
