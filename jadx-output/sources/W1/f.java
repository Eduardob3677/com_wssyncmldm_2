package W1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import o.C0721j;

/* loaded from: classes.dex */
public final class f extends BroadcastReceiver {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference f2818b = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public final Context f2819a;

    public f(Context context) {
        this.f2819a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        synchronized (g.f2820i) {
            try {
                Iterator it = ((C0721j) g.f2822k.values()).iterator();
                while (it.hasNext()) {
                    ((g) it.next()).g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f2819a.unregisterReceiver(this);
    }
}
