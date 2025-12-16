package com.idm.fotaagent.enabler.ui.notification.manager;

import android.app.AlarmManager;
import android.app.PendingIntent;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6437c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ PendingIntent f6438d;

    public /* synthetic */ b(int i5, PendingIntent pendingIntent) {
        this.f6437c = i5;
        this.f6438d = pendingIntent;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i5 = this.f6437c;
        PendingIntent pendingIntent = this.f6438d;
        AlarmManager alarmManager = (AlarmManager) obj;
        switch (i5) {
            case 0:
                alarmManager.cancel(pendingIntent);
                break;
            default:
                alarmManager.cancel(pendingIntent);
                break;
        }
    }
}
