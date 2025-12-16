package Z1;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import c1.C0212C;
import c1.C0214E;
import c1.j;
import c1.p;
import c1.r;
import com.google.android.gms.internal.p000firebaseauthapi.K3;
import com.google.firebase.auth.api.fallback.service.FirebaseAuthFallbackService;

/* loaded from: classes.dex */
public final class a extends Binder implements r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FirebaseAuthFallbackService f3023a;

    public a(FirebaseAuthFallbackService firebaseAuthFallbackService) {
        this.f3023a = firebaseAuthFallbackService;
        attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // c1.r
    public final void e(p pVar, j jVar) {
        Bundle bundle = jVar.f5218i;
        if (bundle == null) {
            throw new IllegalArgumentException("ExtraArgs is null.");
        }
        String string = bundle.getString("com.google.firebase.auth.API_KEY");
        if (TextUtils.isEmpty(string)) {
            throw new IllegalArgumentException("ApiKey must not be empty.");
        }
        pVar.w(0, new K3(this.f3023a, string), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d8  */
    @Override // android.os.Binder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTransact(int i5, Parcel parcel, Parcel parcel2, int i6) {
        p c0212c;
        if (i5 > 16777215) {
            return super.onTransact(i5, parcel, parcel2, i6);
        }
        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            c0212c = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
            c0212c = iInterfaceQueryLocalInterface instanceof p ? (p) iInterfaceQueryLocalInterface : new C0212C(strongBinder, "com.google.android.gms.common.internal.IGmsCallbacks", 1);
        }
        if (i5 == 46) {
            e(c0212c, parcel.readInt() != 0 ? j.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
        if (i5 == 47) {
            if (parcel.readInt() != 0) {
                C0214E.CREATOR.createFromParcel(parcel);
            }
            throw new UnsupportedOperationException();
        }
        parcel.readInt();
        if (i5 != 4) {
            parcel.readString();
        }
        if (i5 == 1) {
            parcel.readString();
            parcel.createStringArray();
            parcel.readString();
            if (parcel.readInt() != 0) {
                Bundle.CREATOR.createFromParcel(parcel);
            }
        } else if (i5 == 2 || i5 == 23 || i5 == 25 || i5 == 27) {
            if (parcel.readInt() != 0) {
                Bundle.CREATOR.createFromParcel(parcel);
            }
        } else if (i5 == 30) {
            parcel.createStringArray();
            parcel.readString();
            if (parcel.readInt() != 0) {
                Bundle.CREATOR.createFromParcel(parcel);
            }
        } else if (i5 == 34) {
            parcel.readString();
        } else if (i5 != 41 && i5 != 43 && i5 != 37 && i5 != 38) {
            switch (i5) {
                case 9:
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    parcel.readStrongBinder();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                        Bundle.CREATOR.createFromParcel(parcel);
                        break;
                    }
                    break;
                case 10:
                    parcel.readString();
                    parcel.createStringArray();
                    break;
                case 19:
                    parcel.readStrongBinder();
                    if (parcel.readInt() != 0) {
                        Bundle.CREATOR.createFromParcel(parcel);
                        break;
                    }
                    break;
            }
        }
        throw new UnsupportedOperationException();
    }
}
