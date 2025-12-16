package s1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: s1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0832e implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f9011a;

    public C0832e(IBinder iBinder) {
        this.f9011a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9011a;
    }

    public final void f(C0833f c0833f, InterfaceC0830c interfaceC0830c) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        int i5 = n1.a.f8315a;
        parcelObtain.writeInt(1);
        c0833f.writeToParcel(parcelObtain, 0);
        if (interfaceC0830c == null) {
            parcelObtain.writeStrongBinder(null);
        } else {
            parcelObtain.writeStrongBinder((AbstractBinderC0831d) interfaceC0830c);
        }
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            this.f9011a.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
