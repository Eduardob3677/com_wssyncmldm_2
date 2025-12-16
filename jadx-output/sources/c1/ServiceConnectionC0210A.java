package c1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: c1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC0210A implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5189a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f5190b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5191c;

    /* renamed from: d, reason: collision with root package name */
    public IBinder f5192d;

    /* renamed from: e, reason: collision with root package name */
    public final l f5193e;
    public ComponentName f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ y f5194g;

    public ServiceConnectionC0210A(y yVar, l lVar) {
        this.f5194g = yVar;
        this.f5193e = lVar;
    }

    public final void a() {
        this.f5190b = 3;
        y yVar = this.f5194g;
        g1.a aVar = yVar.f5274d;
        l lVar = this.f5193e;
        Context context = yVar.f5272b;
        Intent intentA = lVar.a(context);
        aVar.getClass();
        boolean zB = g1.a.b(context, intentA, this, lVar.f5247c);
        this.f5191c = zB;
        if (zB) {
            Q1 q12 = yVar.f5273c;
            q12.sendMessageDelayed(q12.obtainMessage(1, lVar), yVar.f);
        } else {
            this.f5190b = 2;
            try {
                yVar.f5274d.getClass();
                context.unbindService(this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f5194g.f5271a) {
            try {
                this.f5194g.f5273c.removeMessages(1, this.f5193e);
                this.f5192d = iBinder;
                this.f = componentName;
                Iterator it = this.f5189a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f5190b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f5194g.f5271a) {
            try {
                this.f5194g.f5273c.removeMessages(1, this.f5193e);
                this.f5192d = null;
                this.f = componentName;
                Iterator it = this.f5189a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f5190b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
