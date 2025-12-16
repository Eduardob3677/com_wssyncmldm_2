package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Context f6278a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ ScheduledExecutorService f6279b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ FirebaseMessaging f6280c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ l f6281d;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ J3.d f6282e;

    @Override // java.util.concurrent.Callable
    public final Object call() {
        v vVar;
        Context context = this.f6278a;
        ScheduledExecutorService scheduledExecutorService = this.f6279b;
        FirebaseMessaging firebaseMessaging = this.f6280c;
        l lVar = this.f6281d;
        J3.d dVar = this.f6282e;
        synchronized (v.class) {
            try {
                WeakReference weakReference = v.f6276b;
                v vVar2 = weakReference != null ? (v) weakReference.get() : null;
                if (vVar2 == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
                    vVar = new v();
                    synchronized (vVar) {
                        vVar.f6277a = D3.e.c(sharedPreferences, scheduledExecutorService);
                    }
                    v.f6276b = new WeakReference(vVar);
                } else {
                    vVar = vVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new x(firebaseMessaging, lVar, vVar, dVar, context, scheduledExecutorService);
    }
}
