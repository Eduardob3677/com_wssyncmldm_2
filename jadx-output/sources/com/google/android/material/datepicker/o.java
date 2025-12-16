package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

/* loaded from: classes.dex */
public final class o implements Comparable, Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new d(1);

    /* renamed from: c, reason: collision with root package name */
    public final Calendar f6012c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6013d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6014e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6015g;

    /* renamed from: h, reason: collision with root package name */
    public final long f6016h;

    /* renamed from: i, reason: collision with root package name */
    public String f6017i;

    public o(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarB = w.b(calendar);
        this.f6012c = calendarB;
        this.f6013d = calendarB.get(2);
        this.f6014e = calendarB.get(1);
        this.f = calendarB.getMaximum(7);
        this.f6015g = calendarB.getActualMaximum(5);
        this.f6016h = calendarB.getTimeInMillis();
    }

    public static o a(int i5, int i6) {
        Calendar calendarD = w.d(null);
        calendarD.set(1, i5);
        calendarD.set(2, i6);
        return new o(calendarD);
    }

    public static o b(long j3) {
        Calendar calendarD = w.d(null);
        calendarD.setTimeInMillis(j3);
        return new o(calendarD);
    }

    public final String c() {
        if (this.f6017i == null) {
            this.f6017i = w.a("yMMMM", Locale.getDefault()).format(new Date(this.f6012c.getTimeInMillis()));
        }
        return this.f6017i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f6012c.compareTo(((o) obj).f6012c);
    }

    public final int d(o oVar) {
        if (!(this.f6012c instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (oVar.f6013d - this.f6013d) + ((oVar.f6014e - this.f6014e) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f6013d == oVar.f6013d && this.f6014e == oVar.f6014e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f6013d), Integer.valueOf(this.f6014e)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeInt(this.f6014e);
        parcel.writeInt(this.f6013d);
    }
}
