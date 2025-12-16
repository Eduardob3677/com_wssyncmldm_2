package Z0;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.fragment.app.G;
import androidx.fragment.app.Z;
import c1.v;
import h1.AbstractC0443a;
import y.p;

/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f3004b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final e f3005c = new e();

    @Override // Z0.f
    public final Intent a(Context context, int i5, String str) {
        return super.a(context, i5, str);
    }

    @Override // Z0.f
    public final int b(Context context, int i5) {
        return super.b(context, i5);
    }

    public final void c(Activity activity, int i5, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogCreate;
        v vVar = new v(super.a(activity, i5, "d"), activity);
        if (i5 == 0) {
            alertDialogCreate = null;
        } else {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
            if (builder == null) {
                builder = new AlertDialog.Builder(activity);
            }
            builder.setMessage(c1.i.b(activity, i5));
            if (onCancelListener != null) {
                builder.setOnCancelListener(onCancelListener);
            }
            Resources resources = activity.getResources();
            String string = i5 != 1 ? i5 != 2 ? i5 != 3 ? resources.getString(R.string.ok) : resources.getString(com.wssyncmldm.R.string.common_google_play_services_enable_button) : resources.getString(com.wssyncmldm.R.string.common_google_play_services_update_button) : resources.getString(com.wssyncmldm.R.string.common_google_play_services_install_button);
            if (string != null) {
                builder.setPositiveButton(string, vVar);
            }
            String strC = c1.i.c(activity, i5);
            if (strC != null) {
                builder.setTitle(strC);
            }
            alertDialogCreate = builder.create();
        }
        if (alertDialogCreate == null) {
            return;
        }
        if (activity instanceof G) {
            Z supportFragmentManager = ((G) activity).getSupportFragmentManager();
            i iVar = new i();
            alertDialogCreate.setOnCancelListener(null);
            alertDialogCreate.setOnDismissListener(null);
            iVar.f3014c = alertDialogCreate;
            if (onCancelListener != null) {
                iVar.f3015d = onCancelListener;
            }
            iVar.show(supportFragmentManager, "GooglePlayServicesErrorDialog");
            return;
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        b bVar = new b();
        bVar.f2997c = null;
        bVar.f2998d = null;
        alertDialogCreate.setOnCancelListener(null);
        alertDialogCreate.setOnDismissListener(null);
        bVar.f2997c = alertDialogCreate;
        if (onCancelListener != null) {
            bVar.f2998d = onCancelListener;
        }
        bVar.show(fragmentManager, "GooglePlayServicesErrorDialog");
    }

    public final void d(Context context, int i5, PendingIntent pendingIntent) {
        int i6;
        if (i5 == 18) {
            new d(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i5 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strD = i5 == 6 ? c1.i.d(context, "common_google_play_services_resolution_required_title") : c1.i.c(context, i5);
        if (strD == null) {
            strD = context.getResources().getString(com.wssyncmldm.R.string.common_google_play_services_notification_ticker);
        }
        String strE = (i5 == 6 || i5 == 19) ? c1.i.e(context, "common_google_play_services_resolution_required_text", c1.i.a(context)) : c1.i.b(context, i5);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        p pVar = new p(context, null);
        pVar.f9695m = true;
        pVar.f9700s.flags |= 16;
        pVar.f9688e = p.b(strD);
        y.n nVar = new y.n();
        nVar.f9683d = p.b(strE);
        pVar.c(nVar);
        if (AbstractC0443a.f6990b == null) {
            AbstractC0443a.f6990b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        if (AbstractC0443a.f6990b.booleanValue()) {
            pVar.f9700s.icon = context.getApplicationInfo().icon;
            pVar.f9692j = 2;
            AbstractC0443a.d(context);
            pVar.f9689g = pendingIntent;
        } else {
            pVar.f9700s.icon = R.drawable.stat_sys_warning;
            pVar.f9700s.tickerText = p.b(resources.getString(com.wssyncmldm.R.string.common_google_play_services_notification_ticker));
            pVar.f9700s.when = System.currentTimeMillis();
            pVar.f9689g = pendingIntent;
            pVar.f = p.b(strE);
        }
        synchronized (f3004b) {
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
        String string = context.getResources().getString(com.wssyncmldm.R.string.common_google_play_services_notification_channel_name);
        if (notificationChannel == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
        } else if (!string.contentEquals(notificationChannel.getName())) {
            notificationChannel.setName(string);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        pVar.f9698q = "com.google.android.gms.availability";
        Notification notificationA = pVar.a();
        if (i5 == 1 || i5 == 2 || i5 == 3) {
            g.f3007a.set(false);
            i6 = 10436;
        } else {
            i6 = 39789;
        }
        notificationManager.notify(i6, notificationA);
    }
}
