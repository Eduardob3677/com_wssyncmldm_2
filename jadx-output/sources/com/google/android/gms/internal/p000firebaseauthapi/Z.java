package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class Z extends Binder implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5496a;

    public Z(String str, int i5) {
        this.f5496a = i5;
        switch (i5) {
            case 1:
                attachInterface(this, str);
                break;
            default:
                attachInterface(this, str);
                break;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i5 = this.f5496a;
        return this;
    }

    public boolean f(int i5, Parcel parcel, Parcel parcel2) {
        return false;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i5, Parcel parcel, Parcel parcel2, int i6) throws RemoteException {
        boolean zOnTransact;
        switch (this.f5496a) {
            case 0:
                if (i5 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i5, parcel, parcel2, i6)) {
                }
                break;
            default:
                if (i5 > 16777215) {
                    zOnTransact = super.onTransact(i5, parcel, parcel2, i6);
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                    zOnTransact = false;
                }
                if (!zOnTransact) {
                    break;
                }
                break;
        }
        return f(i5, parcel, parcel2);
    }
}
