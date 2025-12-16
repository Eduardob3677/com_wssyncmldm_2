package com.idm.fotaagent.database.room.data.repository;

import com.idm.fotaagent.database.room.data.repository.PropertyRepository;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6353c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f6354d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f6355e;
    public final /* synthetic */ PropertyRepository.SpecificCategory f;

    public /* synthetic */ e(PropertyRepository.SpecificCategory specificCategory, String str, long j3, int i5) {
        this.f6353c = i5;
        this.f = specificCategory;
        this.f6354d = str;
        this.f6355e = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6353c) {
            case 0:
                ((GeneralRepository) this.f).lambda$setDeviceRegistrationReportInfo$0(this.f6354d, this.f6355e);
                break;
            default:
                ((PolicyRepository) this.f).lambda$setVersionAndExpiredTime$0(this.f6354d, this.f6355e);
                break;
        }
    }
}
