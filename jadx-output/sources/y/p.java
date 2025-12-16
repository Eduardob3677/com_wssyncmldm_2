package y;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9684a;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f9688e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public PendingIntent f9689g;

    /* renamed from: h, reason: collision with root package name */
    public IconCompat f9690h;

    /* renamed from: i, reason: collision with root package name */
    public int f9691i;

    /* renamed from: j, reason: collision with root package name */
    public int f9692j;

    /* renamed from: l, reason: collision with root package name */
    public K3.c f9694l;
    public Bundle n;

    /* renamed from: q, reason: collision with root package name */
    public String f9698q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f9699r;

    /* renamed from: s, reason: collision with root package name */
    public final Notification f9700s;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f9701t;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9685b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9686c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f9687d = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public boolean f9693k = true;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9695m = false;

    /* renamed from: o, reason: collision with root package name */
    public int f9696o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f9697p = 0;

    public p(Context context, String str) {
        Notification notification = new Notification();
        this.f9700s = notification;
        this.f9684a = context;
        this.f9698q = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f9692j = 0;
        this.f9701t = new ArrayList();
        this.f9699r = true;
    }

    public static CharSequence b(String str) {
        return (str != null && str.length() > 5120) ? str.subSequence(0, 5120) : str;
    }

    public final Notification a() {
        Bundle bundle;
        com.google.firebase.messaging.p pVar = new com.google.firebase.messaging.p(this);
        p pVar2 = (p) pVar.f;
        K3.c cVar = pVar2.f9694l;
        if (cVar != null) {
            cVar.L0(pVar);
        }
        Notification notificationBuild = ((Notification.Builder) pVar.f6259e).build();
        if (cVar != null) {
            pVar2.f9694l.getClass();
        }
        if (cVar != null && (bundle = notificationBuild.extras) != null) {
            cVar.K0(bundle);
        }
        return notificationBuild;
    }

    public final void c(K3.c cVar) {
        if (this.f9694l != cVar) {
            this.f9694l = cVar;
            if (((p) cVar.f1293c) != this) {
                cVar.f1293c = this;
                c(cVar);
            }
        }
    }
}
