package c1;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class y implements Handler.Callback {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f5269g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public static y f5270h;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5272b;

    /* renamed from: c, reason: collision with root package name */
    public final Q1 f5273c;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5271a = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final g1.a f5274d = g1.a.a();

    /* renamed from: e, reason: collision with root package name */
    public final long f5275e = 5000;
    public final long f = 300000;

    public y(Context context) {
        this.f5272b = context.getApplicationContext();
        this.f5273c = new Q1(context.getMainLooper(), this, 3);
    }

    public final void a(String str, String str2, ServiceConnectionC0220f serviceConnectionC0220f) {
        l lVar = new l(str, str2, false);
        AbstractC0213D.f("ServiceConnection must not be null", serviceConnectionC0220f);
        synchronized (this.f5271a) {
            try {
                ServiceConnectionC0210A serviceConnectionC0210A = (ServiceConnectionC0210A) this.f5271a.get(lVar);
                if (serviceConnectionC0210A == null) {
                    String strValueOf = String.valueOf(lVar);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 50);
                    sb.append("Nonexistent connection status for service config: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
                }
                if (!serviceConnectionC0210A.f5189a.containsKey(serviceConnectionC0220f)) {
                    String strValueOf2 = String.valueOf(lVar);
                    StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 76);
                    sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb2.append(strValueOf2);
                    throw new IllegalStateException(sb2.toString());
                }
                g1.a aVar = serviceConnectionC0210A.f5194g.f5274d;
                serviceConnectionC0210A.f5189a.remove(serviceConnectionC0220f);
                if (serviceConnectionC0210A.f5189a.isEmpty()) {
                    this.f5273c.sendMessageDelayed(this.f5273c.obtainMessage(0, lVar), this.f5275e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(l lVar, ServiceConnectionC0220f serviceConnectionC0220f) {
        boolean z4;
        AbstractC0213D.f("ServiceConnection must not be null", serviceConnectionC0220f);
        synchronized (this.f5271a) {
            try {
                ServiceConnectionC0210A serviceConnectionC0210A = (ServiceConnectionC0210A) this.f5271a.get(lVar);
                if (serviceConnectionC0210A == null) {
                    serviceConnectionC0210A = new ServiceConnectionC0210A(this, lVar);
                    lVar.a(this.f5272b);
                    serviceConnectionC0210A.f5189a.put(serviceConnectionC0220f, serviceConnectionC0220f);
                    serviceConnectionC0210A.a();
                    this.f5271a.put(lVar, serviceConnectionC0210A);
                } else {
                    this.f5273c.removeMessages(0, lVar);
                    if (serviceConnectionC0210A.f5189a.containsKey(serviceConnectionC0220f)) {
                        String strValueOf = String.valueOf(lVar);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(strValueOf);
                        throw new IllegalStateException(sb.toString());
                    }
                    y yVar = serviceConnectionC0210A.f5194g;
                    g1.a aVar = yVar.f5274d;
                    serviceConnectionC0210A.f5193e.a(yVar.f5272b);
                    serviceConnectionC0210A.f5189a.put(serviceConnectionC0220f, serviceConnectionC0220f);
                    int i5 = serviceConnectionC0210A.f5190b;
                    if (i5 == 1) {
                        serviceConnectionC0220f.onServiceConnected(serviceConnectionC0210A.f, serviceConnectionC0210A.f5192d);
                    } else if (i5 == 2) {
                        serviceConnectionC0210A.a();
                    }
                }
                z4 = serviceConnectionC0210A.f5191c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z4;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i5 = message.what;
        if (i5 == 0) {
            synchronized (this.f5271a) {
                try {
                    l lVar = (l) message.obj;
                    ServiceConnectionC0210A serviceConnectionC0210A = (ServiceConnectionC0210A) this.f5271a.get(lVar);
                    if (serviceConnectionC0210A != null && serviceConnectionC0210A.f5189a.isEmpty()) {
                        if (serviceConnectionC0210A.f5191c) {
                            y yVar = serviceConnectionC0210A.f5194g;
                            yVar.f5273c.removeMessages(1, serviceConnectionC0210A.f5193e);
                            g1.a aVar = yVar.f5274d;
                            Context context = yVar.f5272b;
                            aVar.getClass();
                            context.unbindService(serviceConnectionC0210A);
                            serviceConnectionC0210A.f5191c = false;
                            serviceConnectionC0210A.f5190b = 2;
                        }
                        this.f5271a.remove(lVar);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i5 != 1) {
            return false;
        }
        synchronized (this.f5271a) {
            try {
                l lVar2 = (l) message.obj;
                ServiceConnectionC0210A serviceConnectionC0210A2 = (ServiceConnectionC0210A) this.f5271a.get(lVar2);
                if (serviceConnectionC0210A2 != null && serviceConnectionC0210A2.f5190b == 3) {
                    String strValueOf = String.valueOf(lVar2);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(strValueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = serviceConnectionC0210A2.f;
                    if (componentName == null) {
                        lVar2.getClass();
                        componentName = null;
                    }
                    if (componentName == null) {
                        componentName = new ComponentName(lVar2.f5246b, "unknown");
                    }
                    serviceConnectionC0210A2.onServiceDisconnected(componentName);
                }
            } finally {
            }
        }
        return true;
    }
}
