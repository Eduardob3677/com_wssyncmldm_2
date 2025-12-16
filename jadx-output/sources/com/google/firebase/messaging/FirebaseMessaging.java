package com.google.firebase.messaging;

import J.r0;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.C0230a4;
import i1.ThreadFactoryC0478a;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import k2.InterfaceC0638a;
import o.C0713b;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class FirebaseMessaging {

    /* renamed from: i, reason: collision with root package name */
    public static final long f6212i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: j, reason: collision with root package name */
    public static g f6213j;

    /* renamed from: k, reason: collision with root package name */
    public static I0.d f6214k;

    /* renamed from: l, reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f6215l;

    /* renamed from: a, reason: collision with root package name */
    public final W1.g f6216a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6217b;

    /* renamed from: c, reason: collision with root package name */
    public final J3.d f6218c;

    /* renamed from: d, reason: collision with root package name */
    public final A3.D f6219d;

    /* renamed from: e, reason: collision with root package name */
    public final C0230a4 f6220e;
    public final Executor f;

    /* renamed from: g, reason: collision with root package name */
    public final l f6221g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6222h;

    public FirebaseMessaging(W1.g gVar, InterfaceC0638a interfaceC0638a, InterfaceC0638a interfaceC0638a2, l2.d dVar, I0.d dVar2, h2.b bVar) {
        int i5 = 0;
        int i6 = 1;
        gVar.a();
        Context context = gVar.f2823a;
        l lVar = new l(context);
        gVar.a();
        Y0.a aVar = new Y0.a(gVar.f2823a);
        J3.d dVar3 = new J3.d();
        dVar3.f1144c = gVar;
        dVar3.f1145d = lVar;
        dVar3.f1146e = aVar;
        dVar3.f = interfaceC0638a;
        dVar3.f1147g = interfaceC0638a2;
        dVar3.f1148h = dVar;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0478a("Firebase-Messaging-Task"));
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC0478a("Firebase-Messaging-Init"));
        this.f6222h = false;
        f6214k = dVar2;
        this.f6216a = gVar;
        this.f6220e = new C0230a4(this, bVar);
        gVar.a();
        this.f6217b = context;
        h hVar = new h();
        this.f6221g = lVar;
        this.f6218c = dVar3;
        this.f6219d = new A3.D(executorServiceNewSingleThreadExecutor);
        this.f = scheduledThreadPoolExecutor;
        gVar.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(hVar);
        } else {
            String strValueOf = String.valueOf(context);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 125);
            sb.append("Context ");
            sb.append(strValueOf);
            sb.append(" was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        i iVar = new i(i5);
        iVar.f6241d = this;
        scheduledThreadPoolExecutor.execute(iVar);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC0478a("Firebase-Messaging-Topics-Io"));
        int i7 = x.f6284j;
        w wVar = new w();
        wVar.f6278a = context;
        wVar.f6279b = scheduledThreadPoolExecutor2;
        wVar.f6280c = this;
        wVar.f6281d = lVar;
        wVar.f6282e = dVar3;
        u1.n nVarD = AbstractC0739a.d(scheduledThreadPoolExecutor2, wVar);
        g gVar2 = new g(2);
        gVar2.f6238d = this;
        nVarD.c(scheduledThreadPoolExecutor, gVar2);
        i iVar2 = new i(i6);
        iVar2.f6241d = this;
        scheduledThreadPoolExecutor.execute(iVar2);
    }

    public static void b(t tVar, long j3) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f6215l == null) {
                    f6215l = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC0478a("TAG"));
                }
                f6215l.schedule(tVar, j3, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized FirebaseMessaging c() {
        return getInstance(W1.g.d());
    }

    public static synchronized g d(Context context) {
        try {
            if (f6213j == null) {
                f6213j = new g(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f6213j;
    }

    public static synchronized FirebaseMessaging getInstance(W1.g gVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) gVar.b(FirebaseMessaging.class);
        AbstractC0213D.f("Firebase Messaging component is not present", firebaseMessaging);
        return firebaseMessaging;
    }

    public final String a() throws IOException {
        u1.h hVarH;
        r rVarF = f();
        if (!j(rVarF)) {
            return rVarF.f6264a;
        }
        String strB = l.b(this.f6216a);
        A3.D d2 = this.f6219d;
        synchronized (d2) {
            try {
                hVarH = (u1.h) ((C0713b) d2.f81e).getOrDefault(strB, null);
                if (hVarH == null) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        String strValueOf = String.valueOf(strB);
                        Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Making new request for: ".concat(strValueOf) : new String("Making new request for: "));
                    }
                    J3.d dVar = this.f6218c;
                    u1.n nVarE = dVar.e(dVar.p(l.b((W1.g) dVar.f1144c), "*", new Bundle()));
                    ExecutorC0382c executorC0382c = ExecutorC0382c.f;
                    r0 r0Var = new r0();
                    r0Var.f1006c = this;
                    r0Var.f1007d = strB;
                    r0Var.f1008e = rVarF;
                    u1.n nVarI = nVarE.i(executorC0382c, r0Var);
                    Executor executor = (Executor) d2.f80d;
                    A3.D d5 = new A3.D(25, false);
                    d5.f80d = d2;
                    d5.f81e = strB;
                    hVarH = nVarI.h(executor, d5);
                    ((C0713b) d2.f81e).put(strB, hVarH);
                } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String strValueOf2 = String.valueOf(strB);
                    Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Joining ongoing request for: ".concat(strValueOf2) : new String("Joining ongoing request for: "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return (String) AbstractC0739a.a(hVarH);
        } catch (InterruptedException | ExecutionException e5) {
            throw new IOException(e5);
        }
    }

    public final u1.n e() {
        u1.i iVar = new u1.i();
        G.a aVar = new G.a();
        aVar.f774d = this;
        aVar.f775e = iVar;
        this.f.execute(aVar);
        return iVar.f9320a;
    }

    public final r f() {
        r rVarB;
        g gVarD = d(this.f6217b);
        W1.g gVar = this.f6216a;
        gVar.a();
        String strF = "[DEFAULT]".equals(gVar.f2824b) ? "" : gVar.f();
        String strB = l.b(this.f6216a);
        synchronized (gVarD) {
            rVarB = r.b(((SharedPreferences) gVarD.f6238d).getString(g.b(strF, strB), null));
        }
        return rVarB;
    }

    public final void g(boolean z4) {
        C0230a4 c0230a4 = this.f6220e;
        synchronized (c0230a4) {
            try {
                c0230a4.a();
                e eVar = (e) c0230a4.f5508c;
                if (eVar != null) {
                    ((b2.n) ((h2.b) c0230a4.f5507b)).b(eVar);
                    c0230a4.f5508c = null;
                }
                W1.g gVar = ((FirebaseMessaging) c0230a4.f5510e).f6216a;
                gVar.a();
                SharedPreferences.Editor editorEdit = gVar.f2823a.getSharedPreferences("com.google.firebase.messaging", 0).edit();
                editorEdit.putBoolean("auto_init", z4);
                editorEdit.apply();
                if (z4) {
                    ((FirebaseMessaging) c0230a4.f5510e).h();
                }
                c0230a4.f5509d = Boolean.valueOf(z4);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        if (j(f())) {
            synchronized (this) {
                if (!this.f6222h) {
                    i(0L);
                }
            }
        }
    }

    public final synchronized void i(long j3) {
        b(new t(this, Math.min(Math.max(30L, j3 + j3), f6212i)), j3);
        this.f6222h = true;
    }

    public final boolean j(r rVar) {
        if (rVar != null) {
            return System.currentTimeMillis() > rVar.f6266c + r.f6263d || !this.f6221g.a().equals(rVar.f6265b);
        }
        return true;
    }
}
