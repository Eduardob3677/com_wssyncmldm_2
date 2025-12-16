package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.TimeUnit;
import t1.C0856a;

/* loaded from: classes.dex */
public abstract class A {

    /* renamed from: a, reason: collision with root package name */
    public static final long f6201a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b, reason: collision with root package name */
    public static final Object f6202b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static C0856a f6203c;

    public static ComponentName a(Context context, Intent intent) {
        synchronized (f6202b) {
            try {
                if (f6203c == null) {
                    C0856a c0856a = new C0856a(context);
                    f6203c = c0856a;
                    c0856a.f9129b.setReferenceCounted(true);
                    c0856a.f9133g = true;
                }
                boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!booleanExtra) {
                    f6203c.a(f6201a);
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
