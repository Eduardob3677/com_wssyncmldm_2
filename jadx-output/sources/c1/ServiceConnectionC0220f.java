package c1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: c1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC0220f implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f5207a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f5208b;

    public ServiceConnectionC0220f(k kVar, int i5) {
        this.f5208b = kVar;
        this.f5207a = i5;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean z4;
        int i5;
        if (iBinder == null) {
            k kVar = this.f5208b;
            synchronized (kVar.f5228e) {
                z4 = kVar.f5234l == 3;
            }
            if (z4) {
                kVar.f5239r = true;
                i5 = 5;
            } else {
                i5 = 4;
            }
            HandlerC0218d handlerC0218d = kVar.f5227d;
            handlerC0218d.sendMessage(handlerC0218d.obtainMessage(i5, kVar.f5241t.get(), 16));
            return;
        }
        synchronized (this.f5208b.f) {
            try {
                k kVar2 = this.f5208b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                kVar2.f5229g = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof r)) ? new q(iBinder) : (r) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        k kVar3 = this.f5208b;
        int i6 = this.f5207a;
        kVar3.getClass();
        g gVar = new g(kVar3, 0);
        HandlerC0218d handlerC0218d2 = kVar3.f5227d;
        handlerC0218d2.sendMessage(handlerC0218d2.obtainMessage(7, i6, -1, gVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        k kVar;
        synchronized (this.f5208b.f) {
            kVar = this.f5208b;
            kVar.f5229g = null;
        }
        HandlerC0218d handlerC0218d = kVar.f5227d;
        handlerC0218d.sendMessage(handlerC0218d.obtainMessage(6, this.f5207a, 1));
    }
}
