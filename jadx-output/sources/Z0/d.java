package Z0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;

/* loaded from: classes.dex */
public final class d extends Q1 {

    /* renamed from: b, reason: collision with root package name */
    public final Context f3002b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f3003c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 1);
        this.f3003c = eVar;
        this.f3002b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i5 = message.what;
        if (i5 != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i5);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int i6 = f.f3006a;
        e eVar = this.f3003c;
        Context context = this.f3002b;
        int iB = eVar.b(context, i6);
        int i7 = g.f3009c;
        if (iB == 1 || iB == 2 || iB == 3 || iB == 9) {
            Intent intentA = eVar.a(context, iB, "n");
            eVar.d(context, iB, intentA == null ? null : PendingIntent.getActivity(context, 0, intentA, UcmAgentService.ERROR_APPLET_UNKNOWN));
        }
    }
}
