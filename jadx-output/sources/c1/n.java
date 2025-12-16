package c1;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0225a;
import p1.AbstractC0741a;

/* loaded from: classes.dex */
public final class n extends AbstractC0225a implements o {
    public final Account y() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f5503c);
        parcelObtain = Parcel.obtain();
        try {
            this.f5502b.transact(2, parcelObtain, parcelObtain, 0);
            parcelObtain.readException();
            parcelObtain.recycle();
            return (Account) AbstractC0741a.a(parcelObtain, Account.CREATOR);
        } catch (RuntimeException e5) {
            throw e5;
        } finally {
            parcelObtain.recycle();
        }
    }
}
