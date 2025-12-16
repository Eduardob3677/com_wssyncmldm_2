package y;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public final class m extends K3.c {

    /* renamed from: d, reason: collision with root package name */
    public IconCompat f9681d;

    /* renamed from: e, reason: collision with root package name */
    public IconCompat f9682e;
    public boolean f;

    @Override // K3.c
    public final void L0(com.google.firebase.messaging.p pVar) {
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle((Notification.Builder) pVar.f6259e).setBigContentTitle(null);
        IconCompat iconCompat = this.f9681d;
        Context context = (Context) pVar.f6258d;
        if (iconCompat != null) {
            l.a(bigContentTitle, C.c.c(iconCompat, context));
        }
        if (this.f) {
            IconCompat iconCompat2 = this.f9682e;
            if (iconCompat2 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                k.a(bigContentTitle, C.c.c(iconCompat2, context));
            }
        }
        l.c(bigContentTitle, false);
        l.b(bigContentTitle, null);
    }

    @Override // K3.c
    public final String M0() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }
}
