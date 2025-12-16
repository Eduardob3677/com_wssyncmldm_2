package Y0;

import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new c();

    /* renamed from: c, reason: collision with root package name */
    public final Messenger f2887c;

    public e(IBinder iBinder) {
        this.f2887c = new Messenger(iBinder);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Messenger messenger = this.f2887c;
            messenger.getClass();
            IBinder binder = messenger.getBinder();
            Messenger messenger2 = ((e) obj).f2887c;
            messenger2.getClass();
            return binder.equals(messenger2.getBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        Messenger messenger = this.f2887c;
        messenger.getClass();
        return messenger.getBinder().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        Messenger messenger = this.f2887c;
        messenger.getClass();
        parcel.writeStrongBinder(messenger.getBinder());
    }
}
