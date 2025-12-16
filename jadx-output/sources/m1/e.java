package m1;

import android.os.IBinder;
import android.os.IInterface;
import c1.k;

/* loaded from: classes.dex */
public final class e extends k {
    @Override // c1.k
    public final /* synthetic */ IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        return iInterfaceQueryLocalInterface instanceof C0705c ? (C0705c) iInterfaceQueryLocalInterface : new C0705c(iBinder);
    }

    @Override // c1.k
    public final Z0.c[] e() {
        return AbstractC0703a.f8261b;
    }

    @Override // c1.k
    public final String i() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override // c1.k
    public final String j() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }
}
