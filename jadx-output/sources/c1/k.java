package c1;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0225a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class k implements a1.b {

    /* renamed from: w, reason: collision with root package name */
    public static final Z0.c[] f5223w = new Z0.c[0];

    /* renamed from: a, reason: collision with root package name */
    public m f5224a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5225b;

    /* renamed from: c, reason: collision with root package name */
    public final y f5226c;

    /* renamed from: d, reason: collision with root package name */
    public final HandlerC0218d f5227d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f5228e;
    public final Object f;

    /* renamed from: g, reason: collision with root package name */
    public r f5229g;

    /* renamed from: h, reason: collision with root package name */
    public InterfaceC0216b f5230h;

    /* renamed from: i, reason: collision with root package name */
    public IInterface f5231i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f5232j;

    /* renamed from: k, reason: collision with root package name */
    public ServiceConnectionC0220f f5233k;

    /* renamed from: l, reason: collision with root package name */
    public int f5234l;

    /* renamed from: m, reason: collision with root package name */
    public final w f5235m;
    public final w n;

    /* renamed from: o, reason: collision with root package name */
    public final int f5236o;

    /* renamed from: p, reason: collision with root package name */
    public final String f5237p;

    /* renamed from: q, reason: collision with root package name */
    public Z0.a f5238q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5239r;

    /* renamed from: s, reason: collision with root package name */
    public volatile x f5240s;

    /* renamed from: t, reason: collision with root package name */
    public final AtomicInteger f5241t;

    /* renamed from: u, reason: collision with root package name */
    public final Set f5242u;

    /* renamed from: v, reason: collision with root package name */
    public final Account f5243v;

    public k(Context context, Looper looper, int i5, J3.c cVar, a1.e eVar, a1.f fVar) {
        synchronized (y.f5269g) {
            try {
                if (y.f5270h == null) {
                    y.f5270h = new y(context.getApplicationContext());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        y yVar = y.f5270h;
        Object obj = Z0.e.f3004b;
        AbstractC0213D.e(eVar);
        AbstractC0213D.e(fVar);
        w wVar = new w(eVar);
        w wVar2 = new w(fVar);
        String str = (String) cVar.f1141h;
        this.f5228e = new Object();
        this.f = new Object();
        this.f5232j = new ArrayList();
        this.f5234l = 1;
        this.f5238q = null;
        this.f5239r = false;
        this.f5240s = null;
        this.f5241t = new AtomicInteger(0);
        AbstractC0213D.f("Context must not be null", context);
        this.f5225b = context;
        AbstractC0213D.f("Looper must not be null", looper);
        AbstractC0213D.f("Supervisor must not be null", yVar);
        this.f5226c = yVar;
        this.f5227d = new HandlerC0218d(this, looper);
        this.f5236o = i5;
        this.f5235m = wVar;
        this.n = wVar2;
        this.f5237p = str;
        this.f5243v = (Account) cVar.f1138d;
        Set set = (Set) cVar.f;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.f5242u = set;
    }

    public static boolean n(k kVar, int i5, int i6, IInterface iInterface) {
        synchronized (kVar.f5228e) {
            try {
                if (kVar.f5234l != i5) {
                    return false;
                }
                kVar.m(i6, iInterface);
                return true;
            } finally {
            }
        }
    }

    @Override // a1.b
    public boolean a() {
        return false;
    }

    @Override // a1.b
    public boolean b() {
        return true;
    }

    public abstract IInterface c(IBinder iBinder);

    public final void d() {
        this.f5241t.incrementAndGet();
        synchronized (this.f5232j) {
            try {
                int size = this.f5232j.size();
                for (int i5 = 0; i5 < size; i5++) {
                    AbstractC0217c abstractC0217c = (AbstractC0217c) this.f5232j.get(i5);
                    synchronized (abstractC0217c) {
                        abstractC0217c.f5199a = null;
                    }
                }
                this.f5232j.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f) {
            this.f5229g = null;
        }
        m(1, null);
    }

    public Z0.c[] e() {
        return f5223w;
    }

    public Bundle f() {
        return new Bundle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(o oVar, Set set) {
        Bundle bundleF = f();
        j jVar = new j(this.f5236o);
        jVar.f = this.f5225b.getPackageName();
        jVar.f5218i = bundleF;
        if (set != null) {
            jVar.f5217h = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (a()) {
            Account account = this.f5243v;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            jVar.f5219j = account;
            if (oVar != 0) {
                jVar.f5216g = ((AbstractC0225a) oVar).f5502b;
            }
        }
        jVar.f5220k = f5223w;
        jVar.f5221l = e();
        try {
            try {
                synchronized (this.f) {
                    try {
                        r rVar = this.f5229g;
                        if (rVar != null) {
                            rVar.e(new BinderC0219e(this, this.f5241t.get()), jVar);
                        } else {
                            Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                        }
                    } finally {
                    }
                }
            } catch (RemoteException | RuntimeException e5) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e5);
                int i5 = this.f5241t.get();
                h hVar = new h(this, 8, null, null);
                HandlerC0218d handlerC0218d = this.f5227d;
                handlerC0218d.sendMessage(handlerC0218d.obtainMessage(1, i5, -1, hVar));
            }
        } catch (DeadObjectException e6) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e6);
            HandlerC0218d handlerC0218d2 = this.f5227d;
            handlerC0218d2.sendMessage(handlerC0218d2.obtainMessage(6, this.f5241t.get(), 1));
        } catch (SecurityException e7) {
            throw e7;
        }
    }

    public final IInterface h() {
        IInterface iInterface;
        synchronized (this.f5228e) {
            try {
                if (this.f5234l == 5) {
                    throw new DeadObjectException();
                }
                if (!l()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                AbstractC0213D.g("Client is connected but service is null", this.f5231i != null);
                iInterface = this.f5231i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String i();

    public abstract String j();

    public String k() {
        return "com.google.android.gms";
    }

    public final boolean l() {
        boolean z4;
        synchronized (this.f5228e) {
            z4 = this.f5234l == 4;
        }
        return z4;
    }

    public final void m(int i5, IInterface iInterface) {
        m mVar;
        if ((i5 == 4) != (iInterface != null)) {
            throw new IllegalArgumentException();
        }
        synchronized (this.f5228e) {
            try {
                this.f5234l = i5;
                this.f5231i = iInterface;
                if (i5 == 1) {
                    ServiceConnectionC0220f serviceConnectionC0220f = this.f5233k;
                    if (serviceConnectionC0220f != null) {
                        y yVar = this.f5226c;
                        m mVar2 = this.f5224a;
                        String str = mVar2.f5249a;
                        String str2 = mVar2.f5250b;
                        if (this.f5237p == null) {
                            this.f5225b.getClass();
                        }
                        yVar.a(str, str2, serviceConnectionC0220f);
                        this.f5233k = null;
                    }
                } else if (i5 == 2 || i5 == 3) {
                    if (this.f5233k != null && (mVar = this.f5224a) != null) {
                        String str3 = mVar.f5249a;
                        String str4 = mVar.f5250b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 70 + String.valueOf(str4).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(str3);
                        sb.append(" on ");
                        sb.append(str4);
                        Log.e("GmsClient", sb.toString());
                        y yVar2 = this.f5226c;
                        m mVar3 = this.f5224a;
                        String str5 = mVar3.f5249a;
                        String str6 = mVar3.f5250b;
                        ServiceConnectionC0220f serviceConnectionC0220f2 = this.f5233k;
                        if (this.f5237p == null) {
                            this.f5225b.getClass();
                        }
                        yVar2.a(str5, str6, serviceConnectionC0220f2);
                        this.f5241t.incrementAndGet();
                    }
                    this.f5233k = new ServiceConnectionC0220f(this, this.f5241t.get());
                    String strK = k();
                    String strJ = j();
                    this.f5224a = new m(strK, strJ);
                    y yVar3 = this.f5226c;
                    ServiceConnectionC0220f serviceConnectionC0220f3 = this.f5233k;
                    if (this.f5237p == null) {
                        this.f5225b.getClass();
                    }
                    this.f5224a.getClass();
                    if (!yVar3.b(new l(strJ, strK, false), serviceConnectionC0220f3)) {
                        m mVar4 = this.f5224a;
                        String str7 = mVar4.f5249a;
                        String str8 = mVar4.f5250b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str7).length() + 34 + String.valueOf(str8).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str7);
                        sb2.append(" on ");
                        sb2.append(str8);
                        Log.e("GmsClient", sb2.toString());
                        int i6 = this.f5241t.get();
                        g gVar = new g(this, 16);
                        HandlerC0218d handlerC0218d = this.f5227d;
                        handlerC0218d.sendMessage(handlerC0218d.obtainMessage(7, i6, -1, gVar));
                    }
                } else if (i5 == 4) {
                    System.currentTimeMillis();
                }
            } finally {
            }
        }
    }
}
