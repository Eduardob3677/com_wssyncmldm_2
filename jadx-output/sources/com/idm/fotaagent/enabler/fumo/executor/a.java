package com.idm.fotaagent.enabler.fumo.executor;

import com.idm.fotaagent.database.room.data.repository.DmNotificationRepository;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6381c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ IDMFumoExecutor f6382d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6383e;

    public /* synthetic */ a(IDMFumoExecutor iDMFumoExecutor, Object obj, int i5) {
        this.f6381c = i5;
        this.f6382d = iDMFumoExecutor;
        this.f6383e = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6381c) {
            case 0:
                this.f6382d.lambda$updateInformation$0((String) this.f6383e, (IDMFumoExecutor.Updater) obj);
                break;
            default:
                ((IDMFumoExecutorFinishAndExecute) this.f6382d).lambda$overrideFumoExtIfMatches$0((DmNotificationRepository) this.f6383e, (String) obj);
                break;
        }
    }
}
