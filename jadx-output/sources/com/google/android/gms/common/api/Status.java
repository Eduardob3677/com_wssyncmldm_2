package com.google.android.gms.common.api;

import A3.D;
import E0.a;
import Z0.j;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Status extends AbstractC0387a implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new a(7);

    /* renamed from: c, reason: collision with root package name */
    public final int f5308c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5309d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5310e;
    public final PendingIntent f;

    public Status(int i5, int i6, PendingIntent pendingIntent, String str) {
        this.f5308c = i5;
        this.f5309d = i6;
        this.f5310e = str;
        this.f = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f5308c == status.f5308c && this.f5309d == status.f5309d && AbstractC0213D.h(this.f5310e, status.f5310e) && AbstractC0213D.h(this.f, status.f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5308c), Integer.valueOf(this.f5309d), this.f5310e, this.f});
    }

    public final String toString() {
        D d2 = new D(this);
        String strM = this.f5310e;
        if (strM == null) {
            strM = j.M(this.f5309d);
        }
        d2.C0("statusCode", strM);
        d2.C0("resolution", this.f);
        return d2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5309d);
        x.p1(parcel, 2, this.f5310e);
        x.o1(parcel, 3, this.f, i5);
        x.w1(parcel, 1000, 4);
        parcel.writeInt(this.f5308c);
        x.v1(parcel, iT1);
    }

    public Status(int i5, String str) {
        this(1, i5, null, str);
    }
}
