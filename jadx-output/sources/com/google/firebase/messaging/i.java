package com.google.firebase.messaging;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6240c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ FirebaseMessaging f6241d;

    public /* synthetic */ i(int i5) {
        this.f6240c = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context applicationContext;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f6240c) {
            case 0:
                FirebaseMessaging firebaseMessaging = this.f6241d;
                if (firebaseMessaging.f6220e.b()) {
                    firebaseMessaging.h();
                    break;
                }
                break;
            default:
                Context context = this.f6241d.f6217b;
                Context applicationContext2 = context.getApplicationContext();
                if (applicationContext2 == null) {
                    applicationContext2 = context;
                }
                if (!applicationContext2.getSharedPreferences("com.google.firebase.messaging", 0).getBoolean("proxy_notification_initialized", false)) {
                    try {
                        applicationContext = context.getApplicationContext();
                        packageManager = applicationContext.getPackageManager();
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    boolean z4 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_notification_delegation_enabled")) ? true : applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
                    u1.i iVar = new u1.i();
                    m mVar = new m();
                    mVar.f6251c = context;
                    mVar.f6252d = z4;
                    mVar.f6253e = iVar;
                    mVar.run();
                    break;
                }
                break;
        }
    }
}
