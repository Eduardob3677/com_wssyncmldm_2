package com.google.firebase.messaging;

import android.os.Binder;
import android.os.Process;
import android.util.Log;

/* loaded from: classes.dex */
public final class B extends Binder {

    /* renamed from: a, reason: collision with root package name */
    public final g f6204a;

    public B(g gVar) {
        this.f6204a = gVar;
    }

    public final void a(C c2) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        u1.h hVarB = ((AbstractServiceC0383d) this.f6204a.f6238d).b(c2.f6205a);
        ExecutorC0382c executorC0382c = ExecutorC0382c.f6228h;
        g gVar = new g(6);
        gVar.f6238d = c2;
        hVarB.a(executorC0382c, gVar);
    }
}
