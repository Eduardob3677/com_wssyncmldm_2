package R1;

import K.j;
import Y0.h;
import Y0.i;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* loaded from: classes.dex */
public final class f implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2305a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2306b;

    public /* synthetic */ f(int i5, Object obj) {
        this.f2305a = i5;
        this.f2306b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f2305a) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                j jVar = (j) this.f2306b;
                B.f.F(message.obj);
                synchronized (jVar.f1206c) {
                    throw null;
                }
            default:
                h hVar = (h) this.f2306b;
                int i5 = message.arg1;
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    StringBuilder sb = new StringBuilder(41);
                    sb.append("Received response to request: ");
                    sb.append(i5);
                    Log.d("MessengerIpcClient", sb.toString());
                }
                synchronized (hVar) {
                    try {
                        i iVar = (i) hVar.f2898e.get(i5);
                        if (iVar == null) {
                            StringBuilder sb2 = new StringBuilder(50);
                            sb2.append("Received response for unknown request: ");
                            sb2.append(i5);
                            Log.w("MessengerIpcClient", sb2.toString());
                            return true;
                        }
                        hVar.f2898e.remove(i5);
                        hVar.c();
                        Bundle data = message.getData();
                        if (data.getBoolean("unsupported", false)) {
                            iVar.c(new W1.h("Not supported by GmsCore", null));
                            return true;
                        }
                        iVar.a(data);
                        return true;
                    } finally {
                    }
                }
        }
    }
}
