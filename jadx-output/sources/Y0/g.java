package Y0;

import A3.D;
import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2892c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h f2893d;

    public /* synthetic */ g(h hVar, int i5) {
        this.f2892c = i5;
        this.f2893d = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws RemoteException {
        switch (this.f2892c) {
            case 0:
                this.f2893d.a(2, "Service disconnected");
                return;
            case 1:
                h hVar = this.f2893d;
                while (true) {
                    synchronized (hVar) {
                        try {
                            if (hVar.f2894a != 2) {
                                return;
                            }
                            if (hVar.f2897d.isEmpty()) {
                                hVar.c();
                                return;
                            }
                            i iVar = (i) hVar.f2897d.poll();
                            hVar.f2898e.put(iVar.f2899a, iVar);
                            ((ScheduledExecutorService) hVar.f.f2907e).schedule(new G.a(hVar, 3, iVar), 30L, TimeUnit.SECONDS);
                            if (Log.isLoggable("MessengerIpcClient", 3)) {
                                String strValueOf = String.valueOf(iVar);
                                StringBuilder sb = new StringBuilder(strValueOf.length() + 8);
                                sb.append("Sending ");
                                sb.append(strValueOf);
                                Log.d("MessengerIpcClient", sb.toString());
                            }
                            Context context = (Context) hVar.f.f2906d;
                            Messenger messenger = hVar.f2895b;
                            Message messageObtain = Message.obtain();
                            messageObtain.what = iVar.f2901c;
                            messageObtain.arg1 = iVar.f2899a;
                            messageObtain.replyTo = messenger;
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("oneWay", iVar.b());
                            bundle.putString("pkg", context.getPackageName());
                            bundle.putBundle("data", iVar.f2902d);
                            messageObtain.setData(bundle);
                            try {
                                D d2 = hVar.f2896c;
                                Messenger messenger2 = (Messenger) d2.f80d;
                                if (messenger2 == null) {
                                    e eVar = (e) d2.f81e;
                                    if (eVar == null) {
                                        throw new IllegalStateException("Both messengers are null");
                                        break;
                                    } else {
                                        Messenger messenger3 = eVar.f2887c;
                                        messenger3.getClass();
                                        messenger3.send(messageObtain);
                                    }
                                } else {
                                    messenger2.send(messageObtain);
                                }
                            } catch (RemoteException e5) {
                                hVar.a(2, e5.getMessage());
                            }
                        } finally {
                        }
                    }
                }
            default:
                h hVar2 = this.f2893d;
                synchronized (hVar2) {
                    if (hVar2.f2894a == 1) {
                        hVar2.a(1, "Timed out while binding");
                    }
                }
                return;
        }
    }
}
