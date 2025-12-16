package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6246a;

    /* renamed from: b, reason: collision with root package name */
    public String f6247b;

    /* renamed from: c, reason: collision with root package name */
    public String f6248c;

    /* renamed from: d, reason: collision with root package name */
    public int f6249d;

    /* renamed from: e, reason: collision with root package name */
    public int f6250e = 0;

    public l(Context context) {
        this.f6246a = context;
    }

    public static String b(W1.g gVar) {
        gVar.a();
        W1.j jVar = gVar.f2825c;
        String str = jVar.f2834e;
        if (str != null) {
            return str;
        }
        gVar.a();
        String str2 = jVar.f2831b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] strArrSplit = str2.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public final synchronized String a() {
        try {
            if (this.f6247b == null) {
                e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f6247b;
    }

    public final PackageInfo c(String str) {
        try {
            return this.f6246a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e5) {
            Log.w("FirebaseMessaging", "Failed to find package ".concat(e5.toString()));
            return null;
        }
    }

    public final boolean d() {
        int i5;
        synchronized (this) {
            i5 = this.f6250e;
            if (i5 == 0) {
                PackageManager packageManager = this.f6246a.getPackageManager();
                if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                    Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
                    i5 = 0;
                } else {
                    Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");
                    intent.setPackage("com.google.android.gms");
                    List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
                    if (listQueryBroadcastReceivers == null || listQueryBroadcastReceivers.size() <= 0) {
                        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
                    }
                    this.f6250e = 2;
                    i5 = 2;
                }
            }
        }
        return i5 != 0;
    }

    public final synchronized void e() {
        PackageInfo packageInfoC = c(this.f6246a.getPackageName());
        if (packageInfoC != null) {
            this.f6247b = Integer.toString(packageInfoC.versionCode);
            this.f6248c = packageInfoC.versionName;
        }
    }
}
