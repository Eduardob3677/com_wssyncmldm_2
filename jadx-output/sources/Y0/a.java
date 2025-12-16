package Y0;

import J.r0;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import o.C0722k;
import u1.n;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: h, reason: collision with root package name */
    public static int f2877h;

    /* renamed from: i, reason: collision with root package name */
    public static PendingIntent f2878i;

    /* renamed from: j, reason: collision with root package name */
    public static final Pattern f2879j = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: b, reason: collision with root package name */
    public final Context f2881b;

    /* renamed from: c, reason: collision with root package name */
    public final k f2882c;

    /* renamed from: d, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2883d;
    public Messenger f;

    /* renamed from: g, reason: collision with root package name */
    public e f2885g;

    /* renamed from: a, reason: collision with root package name */
    public final C0722k f2880a = new C0722k();

    /* renamed from: e, reason: collision with root package name */
    public final Messenger f2884e = new Messenger(new b(this, Looper.getMainLooper()));

    public a(Context context) {
        this.f2881b = context;
        this.f2882c = new k(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f2883d = scheduledThreadPoolExecutor;
    }

    public final n a(Bundle bundle) throws RemoteException {
        String string;
        synchronized (a.class) {
            int i5 = f2877h;
            f2877h = i5 + 1;
            string = Integer.toString(i5);
        }
        u1.i iVar = new u1.i();
        synchronized (this.f2880a) {
            this.f2880a.put(string, iVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f2882c.a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        Context context = this.f2881b;
        synchronized (a.class) {
            try {
                if (f2878i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f2878i = PendingIntent.getBroadcast(context, 0, intent2, 33554432);
                }
                intent.putExtra("app", f2878i);
            } catch (Throwable th) {
                throw th;
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 5);
        sb.append("|ID|");
        sb.append(string);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 8);
            sb2.append("Sending ");
            sb2.append(strValueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f2884e);
        if (this.f != null || this.f2885g != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    Messenger messenger2 = this.f2885g.f2887c;
                    messenger2.getClass();
                    messenger2.send(messageObtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
        } else if (this.f2882c.a() == 2) {
            this.f2881b.sendBroadcast(intent);
        } else {
            this.f2881b.startService(intent);
        }
        iVar.f9320a.a(m.f2913c, new r0(this, string, this.f2883d.schedule(new B1.h(7, iVar), 30L, TimeUnit.SECONDS)));
        return iVar.f9320a;
    }

    public final void b(Bundle bundle, String str) {
        synchronized (this.f2880a) {
            try {
                u1.i iVar = (u1.i) this.f2880a.remove(str);
                if (iVar != null) {
                    iVar.b(bundle);
                } else {
                    String strValueOf = String.valueOf(str);
                    Log.w("Rpc", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
