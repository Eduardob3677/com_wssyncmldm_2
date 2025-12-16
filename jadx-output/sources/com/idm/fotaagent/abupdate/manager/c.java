package com.idm.fotaagent.abupdate.manager;

import com.idm.fotaagent.database.room.data.repository.TimestampRepository;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6339c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f6340d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6341e;

    public /* synthetic */ c(int i5, long j3, Object obj) {
        this.f6339c = i5;
        this.f6341e = obj;
        this.f6340d = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6339c) {
            case 0:
                ((EnablerManager) this.f6341e).lambda$applyPayload$1(this.f6340d);
                break;
            default:
                ((TimestampRepository) this.f6341e).lambda$setTimes$0(this.f6340d);
                break;
        }
    }
}
