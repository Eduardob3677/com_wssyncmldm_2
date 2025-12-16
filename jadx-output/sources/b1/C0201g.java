package b1;

import A3.D;
import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import o.C0714c;
import o.C0718g;

/* renamed from: b1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0201g implements Handler.Callback {

    /* renamed from: j, reason: collision with root package name */
    public static final Status f5080j = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: k, reason: collision with root package name */
    public static final Status f5081k = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: l, reason: collision with root package name */
    public static final Object f5082l = new Object();

    /* renamed from: m, reason: collision with root package name */
    public static C0201g f5083m;

    /* renamed from: a, reason: collision with root package name */
    public long f5084a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5085b;

    /* renamed from: c, reason: collision with root package name */
    public final Z0.e f5086c;

    /* renamed from: d, reason: collision with root package name */
    public final D f5087d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f5088e;
    public final AtomicInteger f;

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f5089g;

    /* renamed from: h, reason: collision with root package name */
    public final C0714c f5090h;

    /* renamed from: i, reason: collision with root package name */
    public final Q1 f5091i;

    public C0201g(Context context, Looper looper) {
        Z0.e eVar = Z0.e.f3005c;
        this.f5084a = 10000L;
        this.f5088e = new AtomicInteger(1);
        this.f = new AtomicInteger(0);
        this.f5089g = new ConcurrentHashMap(5, 0.75f, 1);
        new C0714c(0);
        this.f5090h = new C0714c(0);
        this.f5085b = context;
        Q1 q12 = new Q1(looper, this, 1);
        this.f5091i = q12;
        this.f5086c = eVar;
        this.f5087d = new D(20);
        q12.sendMessage(q12.obtainMessage(6));
    }

    public static C0201g a(Context context) {
        C0201g c0201g;
        synchronized (f5082l) {
            try {
                if (f5083m == null) {
                    HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                    handlerThread.start();
                    Looper looper = handlerThread.getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = Z0.e.f3004b;
                    f5083m = new C0201g(applicationContext, looper);
                }
                c0201g = f5083m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0201g;
    }

    public final void b(a1.d dVar) {
        C0195a c0195a = dVar.f3037d;
        ConcurrentHashMap concurrentHashMap = this.f5089g;
        C0198d c0198d = (C0198d) concurrentHashMap.get(c0195a);
        if (c0198d == null) {
            c0198d = new C0198d(this, dVar);
            concurrentHashMap.put(c0195a, c0198d);
        }
        if (c0198d.f5063b.a()) {
            this.f5090h.add(c0195a);
        }
        c0198d.a();
    }

    public final boolean c(Z0.a aVar, int i5) {
        Z0.e eVar = this.f5086c;
        eVar.getClass();
        int i6 = aVar.f2995d;
        PendingIntent activity = aVar.f2996e;
        boolean z4 = (i6 == 0 || activity == null) ? false : true;
        Context context = this.f5085b;
        if (!z4) {
            activity = null;
            Intent intentA = eVar.a(context, i6, null);
            if (intentA != null) {
                activity = PendingIntent.getActivity(context, 0, intentA, UcmAgentService.ERROR_APPLET_UNKNOWN);
            }
        }
        if (activity == null) {
            return false;
        }
        int i7 = GoogleApiActivity.f5304d;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", activity);
        intent.putExtra("failing_client_id", i5);
        intent.putExtra("notify_manager", true);
        eVar.d(context, i6, PendingIntent.getActivity(context, 0, intent, UcmAgentService.ERROR_APPLET_UNKNOWN));
        return true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Z0.c[] cVarArrD;
        int i5 = message.what;
        ConcurrentHashMap concurrentHashMap = this.f5089g;
        int i6 = 0;
        C0198d c0198d = null;
        int i7 = 1;
        switch (i5) {
            case 1:
                this.f5084a = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                Q1 q12 = this.f5091i;
                q12.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    q12.sendMessageDelayed(q12.obtainMessage(12, (C0195a) it.next()), this.f5084a);
                }
                return true;
            case 2:
                B.f.F(message.obj);
                throw null;
            case 3:
                for (C0198d c0198d2 : concurrentHashMap.values()) {
                    AbstractC0213D.b(c0198d2.f5072l.f5091i);
                    c0198d2.f5071k = null;
                    c0198d2.a();
                }
                return true;
            case 4:
            case 8:
            case 13:
                p pVar = (p) message.obj;
                C0198d c0198d3 = (C0198d) concurrentHashMap.get(pVar.f5096c.f3037d);
                if (c0198d3 == null) {
                    a1.d dVar = pVar.f5096c;
                    b(dVar);
                    c0198d3 = (C0198d) concurrentHashMap.get(dVar.f3037d);
                }
                boolean zA = c0198d3.f5063b.a();
                m mVar = pVar.f5094a;
                if (!zA || this.f.get() == pVar.f5095b) {
                    c0198d3.b(mVar);
                } else {
                    mVar.b(f5080j);
                    c0198d3.h();
                }
                return true;
            case 5:
                int i8 = message.arg1;
                Z0.a aVar = (Z0.a) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        C0198d c0198d4 = (C0198d) it2.next();
                        if (c0198d4.f5067g == i8) {
                            c0198d = c0198d4;
                        }
                    }
                }
                if (c0198d != null) {
                    int i9 = aVar.f2995d;
                    this.f5086c.getClass();
                    int i10 = Z0.g.f3009c;
                    String strD = Z0.a.d(i9);
                    int length = String.valueOf(strD).length() + 69;
                    String str = aVar.f;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + length);
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(strD);
                    sb.append(": ");
                    sb.append(str);
                    c0198d.j(new Status(17, sb.toString()));
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i8);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                }
                return true;
            case 6:
                Context context = this.f5085b;
                if (context.getApplicationContext() instanceof Application) {
                    ComponentCallbacks2C0197c.b((Application) context.getApplicationContext());
                    ComponentCallbacks2C0197c componentCallbacks2C0197c = ComponentCallbacks2C0197c.f5058g;
                    componentCallbacks2C0197c.a(new a2.h(i7, this));
                    AtomicBoolean atomicBoolean = componentCallbacks2C0197c.f5060d;
                    boolean z4 = atomicBoolean.get();
                    AtomicBoolean atomicBoolean2 = componentCallbacks2C0197c.f5059c;
                    if (!z4) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!atomicBoolean.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            atomicBoolean2.set(true);
                        }
                    }
                    if (!atomicBoolean2.get()) {
                        this.f5084a = 300000L;
                    }
                }
                return true;
            case 7:
                b((a1.d) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    C0198d c0198d5 = (C0198d) concurrentHashMap.get(message.obj);
                    AbstractC0213D.b(c0198d5.f5072l.f5091i);
                    if (c0198d5.f5069i) {
                        c0198d5.a();
                    }
                }
                return true;
            case 10:
                C0714c c0714c = this.f5090h;
                Iterator it3 = c0714c.iterator();
                while (true) {
                    C0718g c0718g = (C0718g) it3;
                    if (!c0718g.hasNext()) {
                        c0714c.clear();
                        return true;
                    }
                    ((C0198d) concurrentHashMap.remove((C0195a) c0718g.next())).h();
                }
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    C0198d c0198d6 = (C0198d) concurrentHashMap.get(message.obj);
                    C0201g c0201g = c0198d6.f5072l;
                    AbstractC0213D.b(c0201g.f5091i);
                    boolean z5 = c0198d6.f5069i;
                    if (z5) {
                        if (z5) {
                            C0201g c0201g2 = c0198d6.f5072l;
                            Q1 q13 = c0201g2.f5091i;
                            C0195a c0195a = c0198d6.f5064c;
                            q13.removeMessages(11, c0195a);
                            c0201g2.f5091i.removeMessages(9, c0195a);
                            c0198d6.f5069i = false;
                        }
                        c0198d6.j(c0201g.f5086c.b(c0201g.f5085b, Z0.f.f3006a) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                        ((c1.k) c0198d6.f5063b).d();
                    }
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    C0198d c0198d7 = (C0198d) concurrentHashMap.get(message.obj);
                    AbstractC0213D.b(c0198d7.f5072l.f5091i);
                    c1.k kVar = (c1.k) c0198d7.f5063b;
                    if (kVar.l() && c0198d7.f.size() == 0) {
                        D d2 = c0198d7.f5065d;
                        if (((Map) d2.f80d).isEmpty() && ((Map) d2.f81e).isEmpty()) {
                            kVar.d();
                        } else {
                            c0198d7.i();
                        }
                    }
                }
                return true;
            case 14:
                B.f.F(message.obj);
                throw null;
            case 15:
                C0200f c0200f = (C0200f) message.obj;
                if (concurrentHashMap.containsKey(c0200f.f5078a)) {
                    C0198d c0198d8 = (C0198d) concurrentHashMap.get(c0200f.f5078a);
                    if (c0198d8.f5070j.contains(c0200f) && !c0198d8.f5069i) {
                        if (((c1.k) c0198d8.f5063b).l()) {
                            c0198d8.g();
                        } else {
                            c0198d8.a();
                        }
                    }
                }
                return true;
            case 16:
                C0200f c0200f2 = (C0200f) message.obj;
                if (concurrentHashMap.containsKey(c0200f2.f5078a)) {
                    C0198d c0198d9 = (C0198d) concurrentHashMap.get(c0200f2.f5078a);
                    if (c0198d9.f5070j.remove(c0200f2)) {
                        C0201g c0201g3 = c0198d9.f5072l;
                        c0201g3.f5091i.removeMessages(15, c0200f2);
                        c0201g3.f5091i.removeMessages(16, c0200f2);
                        LinkedList linkedList = c0198d9.f5062a;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        Iterator it4 = linkedList.iterator();
                        while (true) {
                            boolean zHasNext = it4.hasNext();
                            Z0.c cVar = c0200f2.f5079b;
                            if (zHasNext) {
                                m mVar2 = (m) it4.next();
                                if ((mVar2 instanceof m) && (cVarArrD = mVar2.d(c0198d9)) != null) {
                                    int length2 = cVarArrD.length;
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 >= length2) {
                                            i11 = -1;
                                        } else if (!AbstractC0213D.h(cVarArrD[i11], cVar)) {
                                            i11++;
                                        }
                                    }
                                    if (i11 >= 0) {
                                        arrayList.add(mVar2);
                                    }
                                }
                            } else {
                                int size = arrayList.size();
                                while (i6 < size) {
                                    Object obj = arrayList.get(i6);
                                    i6++;
                                    m mVar3 = (m) obj;
                                    linkedList.remove(mVar3);
                                    mVar3.c(new a1.i(cVar));
                                }
                            }
                        }
                    }
                }
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i5);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }
}
