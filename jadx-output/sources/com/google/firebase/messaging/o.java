package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iQ0 = AbstractC0420a.q0(parcel);
        Bundle bundleH = null;
        while (parcel.dataPosition() < iQ0) {
            int i5 = parcel.readInt();
            if ((65535 & i5) != 2) {
                AbstractC0420a.n0(parcel, i5);
            } else {
                bundleH = AbstractC0420a.h(parcel, i5);
            }
        }
        AbstractC0420a.u(parcel, iQ0);
        return new n(bundleH);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i5) {
        return new n[i5];
    }
}
