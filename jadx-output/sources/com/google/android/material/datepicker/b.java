package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new E0.a(29);

    /* renamed from: c, reason: collision with root package name */
    public final o f5956c;

    /* renamed from: d, reason: collision with root package name */
    public final o f5957d;

    /* renamed from: e, reason: collision with root package name */
    public final e f5958e;
    public final o f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5959g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5960h;

    /* renamed from: i, reason: collision with root package name */
    public final int f5961i;

    public b(o oVar, o oVar2, e eVar, o oVar3, int i5) {
        Objects.requireNonNull(oVar, "start cannot be null");
        Objects.requireNonNull(oVar2, "end cannot be null");
        Objects.requireNonNull(eVar, "validator cannot be null");
        this.f5956c = oVar;
        this.f5957d = oVar2;
        this.f = oVar3;
        this.f5959g = i5;
        this.f5958e = eVar;
        if (oVar3 != null && oVar.f6012c.compareTo(oVar3.f6012c) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (oVar3 != null && oVar3.f6012c.compareTo(oVar2.f6012c) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i5 < 0 || i5 > w.d(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f5961i = oVar.d(oVar2) + 1;
        this.f5960h = (oVar2.f6014e - oVar.f6014e) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f5956c.equals(bVar.f5956c) && this.f5957d.equals(bVar.f5957d) && Objects.equals(this.f, bVar.f) && this.f5959g == bVar.f5959g && this.f5958e.equals(bVar.f5958e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5956c, this.f5957d, this.f, Integer.valueOf(this.f5959g), this.f5958e});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeParcelable(this.f5956c, 0);
        parcel.writeParcelable(this.f5957d, 0);
        parcel.writeParcelable(this.f, 0);
        parcel.writeParcelable(this.f5958e, 0);
        parcel.writeInt(this.f5959g);
    }
}
