package com.idm.fotaagent.enabler.ui.notification.manager;

import android.app.AlarmManager;
import com.idm.fotaagent.utils.storage.FileManager;
import java.io.File;
import java.io.Serializable;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6434c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6435d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f6436e;

    public /* synthetic */ a(Object obj, Serializable serializable, int i5) {
        this.f6434c = i5;
        this.f6435d = obj;
        this.f6436e = serializable;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6434c) {
            case 0:
                ((NotificationTimer) this.f6435d).lambda$start$0((NotificationType) this.f6436e, (AlarmManager) obj);
                break;
            default:
                ((FileManager) this.f6435d).lambda$clearDirectory$1((String[]) this.f6436e, (File) obj);
                break;
        }
    }
}
