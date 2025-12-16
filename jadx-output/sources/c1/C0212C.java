package c1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0225a;
import p1.AbstractC0741a;

/* renamed from: c1.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0212C extends AbstractC0225a implements p {
    @Override // c1.p
    public final void w(int i5, IBinder iBinder, Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f5503c);
        parcelObtain.writeInt(i5);
        parcelObtain.writeStrongBinder(iBinder);
        int i6 = AbstractC0741a.f8576a;
        if (bundle == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
        }
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            this.f5502b.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
