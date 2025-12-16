package com.idm.fotaagent.database.room.data.repository;

import com.idm.fotaagent.database.room.data.repository.PropertyRepository;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6350c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ PropertyRepository.SpecificCategory f6351d;

    public /* synthetic */ c(PropertyRepository.SpecificCategory specificCategory, int i5) {
        this.f6350c = i5;
        this.f6351d = specificCategory;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i5 = this.f6350c;
        PropertyRepository.SpecificCategory specificCategory = this.f6351d;
        switch (i5) {
            case 0:
                ((DeviceRegistrationRepository) specificCategory).lambda$setRegister$0();
                break;
            default:
                ((PolicyRepository) specificCategory).lambda$clearVersionAndExpiredTime$1();
                break;
        }
    }
}
