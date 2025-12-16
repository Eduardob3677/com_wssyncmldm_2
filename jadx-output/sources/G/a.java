package G;

import A3.D;
import J.Q;
import Y1.t;
import a2.C0107c;
import a2.s;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import b1.C0195a;
import b1.C0198d;
import b1.C0199e;
import b1.C0201g;
import b1.q;
import c1.AbstractBinderC0215a;
import c1.AbstractC0213D;
import c1.o;
import c1.u;
import com.google.android.gms.internal.p000firebaseauthapi.C0372y3;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.p;
import e.J;
import j.InterfaceC0506g;
import j.MenuC0508i;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import k.C0587f;
import k.C0602k;
import s1.C0834g;
import s2.C0837c;
import u1.n;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f773c;

    /* renamed from: d, reason: collision with root package name */
    public Object f774d;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f775e;

    public /* synthetic */ a() {
        this.f773c = 7;
    }

    private final void a() {
        synchronized (((u1.l) this.f775e).f9328e) {
            try {
                u1.e eVar = (u1.e) ((u1.l) this.f775e).f;
                if (eVar != null) {
                    eVar.L(((u1.h) this.f774d).e());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        o oVar;
        Set set;
        InterfaceC0506g interfaceC0506g;
        int i5 = 0;
        int i6 = 1;
        switch (this.f773c) {
            case 0:
                A.b bVar = (A.b) ((C0837c) this.f774d).f9022c;
                if (bVar != null) {
                    bVar.i((Typeface) this.f775e);
                    return;
                }
                return;
            case 1:
                ((I.a) this.f774d).accept(this.f775e);
                return;
            case 2:
                Y0.h hVar = (Y0.h) this.f774d;
                IBinder iBinder = (IBinder) this.f775e;
                synchronized (hVar) {
                    if (iBinder == null) {
                        hVar.a(0, "Null service connection");
                    } else {
                        try {
                            hVar.f2896c = new D(iBinder);
                            hVar.f2894a = 2;
                            ((ScheduledExecutorService) hVar.f.f2907e).execute(new Y0.g(hVar, i6));
                        } catch (RemoteException e5) {
                            hVar.a(0, e5.getMessage());
                        }
                    }
                }
                return;
            case 3:
                Y0.h hVar2 = (Y0.h) this.f774d;
                int i7 = ((Y0.i) this.f775e).f2899a;
                synchronized (hVar2) {
                    Y0.i iVar = (Y0.i) hVar2.f2898e.get(i7);
                    if (iVar != null) {
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("Timing out request: ");
                        sb.append(i7);
                        Log.w("MessengerIpcClient", sb.toString());
                        hVar2.f2898e.remove(i7);
                        iVar.c(new W1.h("Timed out waiting for response", null));
                        hVar2.c();
                    }
                }
                return;
            case 4:
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(W1.g.e((String) this.f774d));
                s sVar = firebaseAuth.f;
                if (sVar != null) {
                    C0373y4 c0373y4 = sVar.f3078c;
                    c0373y4.f();
                    String str = c0373y4.f5787c;
                    t tVar = new t(firebaseAuth, i5);
                    p pVar = firebaseAuth.f6186e;
                    pVar.getClass();
                    C0372y3 c0372y3 = new C0372y3(str);
                    c0372y3.d(firebaseAuth.f6182a);
                    c0372y3.f5534d = sVar;
                    c0372y3.f5535e = tVar;
                    c0372y3.f = tVar;
                    n nVarB = pVar.Q().f5744a.b(0, c0372y3.a());
                    C0107c.f3042e.i("Token refreshing started", new Object[0]);
                    C0837c c0837c = new C0837c(this);
                    nVarB.getClass();
                    nVarB.b(u1.j.f9321a, c0837c);
                    return;
                }
                return;
            case 5:
                C0199e c0199e = (C0199e) this.f775e;
                C0198d c0198d = (C0198d) ((C0201g) c0199e.f5077h).f5089g.get((C0195a) c0199e.f5075e);
                if (c0198d == null) {
                    return;
                }
                Z0.a aVar = (Z0.a) this.f774d;
                if (aVar.f2995d != 0) {
                    c0198d.s(aVar);
                    return;
                }
                c0199e.f5073c = true;
                a1.b bVar2 = (a1.b) c0199e.f5074d;
                if (bVar2.a()) {
                    if (!c0199e.f5073c || (oVar = (o) c0199e.f) == null) {
                        return;
                    }
                    ((c1.k) bVar2).g(oVar, (Set) c0199e.f5076g);
                    return;
                }
                try {
                    c1.k kVar = (c1.k) bVar2;
                    ((c1.k) bVar2).g(null, kVar.a() ? kVar.f5242u : Collections.emptySet());
                    return;
                } catch (SecurityException e6) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e6);
                    c0198d.s(new Z0.a(10));
                    return;
                }
            case 6:
                q qVar = (q) this.f775e;
                qVar.getClass();
                C0834g c0834g = (C0834g) this.f774d;
                Z0.a aVar2 = c0834g.f9015d;
                if (aVar2.f2995d == 0) {
                    u uVar = c0834g.f9016e;
                    Z0.a aVar3 = uVar.f5260e;
                    if (aVar3.f2995d != 0) {
                        String strValueOf = String.valueOf(aVar3);
                        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 48);
                        sb2.append("Sign-in succeeded with resolve account failure: ");
                        sb2.append(strValueOf);
                        Log.wtf("SignInCoordinator", sb2.toString(), new Exception());
                        qVar.f5103g.b(aVar3);
                        qVar.f.d();
                        return;
                    }
                    C0199e c0199e2 = qVar.f5103g;
                    o oVarQ = AbstractBinderC0215a.q(uVar.f5259d);
                    c0199e2.getClass();
                    if (oVarQ == null || (set = qVar.f5101d) == null) {
                        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                        c0199e2.b(new Z0.a(4));
                    } else {
                        c0199e2.f = oVarQ;
                        c0199e2.f5076g = set;
                        if (c0199e2.f5073c) {
                            ((c1.k) ((a1.b) c0199e2.f5074d)).g(oVarQ, set);
                        }
                    }
                } else {
                    qVar.f5103g.b(aVar2);
                }
                qVar.f.d();
                return;
            case 7:
                u1.i iVar2 = (u1.i) this.f775e;
                FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f774d;
                firebaseMessaging.getClass();
                try {
                    iVar2.b(firebaseMessaging.a());
                    return;
                } catch (Exception e7) {
                    iVar2.a(e7);
                    return;
                }
            case 8:
                C0602k c0602k = (C0602k) this.f775e;
                MenuC0508i menuC0508i = c0602k.f7881e;
                if (menuC0508i != null && (interfaceC0506g = menuC0508i.f7233e) != null) {
                    interfaceC0506g.c(menuC0508i);
                }
                View view = (View) c0602k.f7885j;
                if (view != null && view.getWindowToken() != null) {
                    C0587f c0587f = (C0587f) this.f774d;
                    if (c0587f.b()) {
                        c0602k.f7895u = c0587f;
                    } else if (c0587f.f != null) {
                        c0587f.d(true, true);
                        c0602k.f7895u = c0587f;
                    }
                }
                c0602k.f7897w = null;
                return;
            case 9:
                if (((n) ((u1.h) this.f774d)).f9332d) {
                    ((u1.k) this.f775e).f.l();
                    return;
                }
                try {
                    ((u1.k) this.f775e).f.k(((u1.k) this.f775e).f9325e.H((u1.h) this.f774d));
                    return;
                } catch (u1.f e8) {
                    if (e8.getCause() instanceof Exception) {
                        ((u1.k) this.f775e).f.j((Exception) e8.getCause());
                        return;
                    } else {
                        ((u1.k) this.f775e).f.j(e8);
                        return;
                    }
                } catch (Exception e9) {
                    ((u1.k) this.f775e).f.j(e9);
                    return;
                }
            case 10:
                u1.k kVar2 = (u1.k) this.f775e;
                try {
                    u1.h hVar3 = (u1.h) kVar2.f9325e.H((u1.h) this.f774d);
                    if (hVar3 == null) {
                        kVar2.J(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    J j3 = u1.j.f9322b;
                    hVar3.c(j3, kVar2);
                    hVar3.b(j3, kVar2);
                    n nVar = (n) hVar3;
                    nVar.f9330b.f(new u1.l(j3, (u1.b) kVar2));
                    nVar.m();
                    return;
                } catch (u1.f e10) {
                    if (e10.getCause() instanceof Exception) {
                        kVar2.f.j((Exception) e10.getCause());
                        return;
                    } else {
                        kVar2.f.j(e10);
                        return;
                    }
                } catch (Exception e11) {
                    kVar2.f.j(e11);
                    return;
                }
            case 11:
                synchronized (((u1.l) this.f775e).f9328e) {
                    try {
                        u1.c cVar = (u1.c) ((u1.l) this.f775e).f;
                        if (cVar != null) {
                            cVar.onComplete((u1.h) this.f774d);
                        }
                    } finally {
                    }
                }
                return;
            case 12:
                synchronized (((u1.l) this.f775e).f9328e) {
                    try {
                        u1.d dVar = (u1.d) ((u1.l) this.f775e).f;
                        if (dVar != null) {
                            dVar.J(((u1.h) this.f774d).d());
                        }
                    } finally {
                    }
                }
                return;
            case 13:
                a();
                return;
            case 14:
                u1.l lVar = (u1.l) this.f775e;
                try {
                    n nVarA = ((u1.g) lVar.f9328e).a(((u1.h) this.f774d).e());
                    J j5 = u1.j.f9322b;
                    nVarA.c(j5, lVar);
                    nVarA.b(j5, lVar);
                    nVarA.f9330b.f(new u1.l(j5, (u1.b) lVar));
                    nVarA.m();
                    return;
                } catch (CancellationException unused) {
                    lVar.H();
                    return;
                } catch (u1.f e12) {
                    if (e12.getCause() instanceof Exception) {
                        lVar.J((Exception) e12.getCause());
                        return;
                    } else {
                        lVar.J(e12);
                        return;
                    }
                } catch (Exception e13) {
                    lVar.J(e13);
                    return;
                }
            case 15:
                n nVar2 = (n) this.f774d;
                try {
                    nVar2.k(((Callable) this.f775e).call());
                    return;
                } catch (Exception e14) {
                    nVar2.j(e14);
                    return;
                }
            default:
                S.d dVar2 = ((SwipeDismissBehavior) this.f775e).f5830a;
                if (dVar2 == null || !dVar2.f()) {
                    return;
                }
                WeakHashMap weakHashMap = Q.f940a;
                ((View) this.f774d).postOnAnimation(this);
                return;
        }
    }

    public /* synthetic */ a(Object obj, int i5, Object obj2) {
        this.f773c = i5;
        this.f774d = obj;
        this.f775e = obj2;
    }

    public /* synthetic */ a(Object obj, Object obj2, int i5, boolean z4) {
        this.f773c = i5;
        this.f775e = obj;
        this.f774d = obj2;
    }

    public a(C0107c c0107c, String str) {
        this.f773c = 4;
        this.f775e = c0107c;
        AbstractC0213D.c(str);
        this.f774d = str;
    }

    public a(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z4) {
        this.f773c = 16;
        this.f775e = swipeDismissBehavior;
        this.f774d = view;
    }
}
