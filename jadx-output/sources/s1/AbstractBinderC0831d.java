package s1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import b1.q;

/* renamed from: s1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0831d extends Binder implements InterfaceC0830c, IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i5, Parcel parcel, Parcel parcel2, int i6) throws RemoteException {
        boolean zOnTransact;
        if (i5 > 16777215) {
            zOnTransact = super.onTransact(i5, parcel, parcel2, i6);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        if (i5 == 3) {
        } else if (i5 == 4 || i5 == 6) {
        } else if (i5 == 7) {
        } else {
            if (i5 != 8) {
                return false;
            }
            q qVar = (q) this;
            qVar.f5099b.post(new G.a(qVar, (C0834g) n1.a.a(parcel, C0834g.CREATOR), 6, false));
        }
        parcel2.writeNoException();
        return true;
    }
}
