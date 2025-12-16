package y;

import android.app.Notification;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class n extends K3.c {

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f9683d;

    @Override // K3.c
    public final void K0(Bundle bundle) {
        super.K0(bundle);
    }

    @Override // K3.c
    public final void L0(com.google.firebase.messaging.p pVar) {
        new Notification.BigTextStyle((Notification.Builder) pVar.f6259e).setBigContentTitle(null).bigText(this.f9683d);
    }

    @Override // K3.c
    public final String M0() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }
}
