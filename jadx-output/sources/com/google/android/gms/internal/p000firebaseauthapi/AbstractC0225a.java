package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0225a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5501a;

    /* renamed from: b, reason: collision with root package name */
    public final IBinder f5502b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5503c;

    public /* synthetic */ AbstractC0225a(IBinder iBinder, String str, int i5) {
        this.f5501a = i5;
        this.f5502b = iBinder;
        this.f5503c = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        switch (this.f5501a) {
        }
        return this.f5502b;
    }

    public void f(Parcel parcel, int i5) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f5502b.transact(i5, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    public void q(Parcel parcel, int i5) {
        try {
            this.f5502b.transact(i5, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public Parcel s() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f5503c);
        return parcelObtain;
    }
}
