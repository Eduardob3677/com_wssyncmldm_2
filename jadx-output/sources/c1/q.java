package c1;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class q implements r {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f5251a;

    public q(IBinder iBinder) {
        this.f5251a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5251a;
    }

    @Override // c1.r
    public final void e(p pVar, j jVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(pVar != null ? pVar.asBinder() : null);
            if (jVar != null) {
                parcelObtain.writeInt(1);
                jVar.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.f5251a.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain2.recycle();
            parcelObtain.recycle();
        } catch (Throwable th) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            throw th;
        }
    }
}
