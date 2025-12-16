package com.google.android.gms.common.api;

import E0.a;
import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class Scope extends AbstractC0387a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new a(6);

    /* renamed from: c, reason: collision with root package name */
    public final int f5306c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5307d;

    public Scope(int i5, String str) {
        AbstractC0213D.d(str, "scopeUri must not be null or empty");
        this.f5306c = i5;
        this.f5307d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f5307d.equals(((Scope) obj).f5307d);
    }

    public final int hashCode() {
        return this.f5307d.hashCode();
    }

    public final String toString() {
        return this.f5307d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5306c);
        x.p1(parcel, 2, this.f5307d);
        x.v1(parcel, iT1);
    }
}
