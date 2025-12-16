package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import g1.c;
import i3.x;
import java.util.List;

/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new c();

    /* renamed from: c, reason: collision with root package name */
    public final int f5311c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5312d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5313e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5314g;

    /* renamed from: h, reason: collision with root package name */
    public final String f5315h;

    /* renamed from: i, reason: collision with root package name */
    public final int f5316i;

    /* renamed from: j, reason: collision with root package name */
    public final List f5317j;

    /* renamed from: k, reason: collision with root package name */
    public final String f5318k;

    /* renamed from: l, reason: collision with root package name */
    public final long f5319l;

    /* renamed from: m, reason: collision with root package name */
    public final int f5320m;
    public final String n;

    /* renamed from: o, reason: collision with root package name */
    public final float f5321o;

    /* renamed from: p, reason: collision with root package name */
    public final long f5322p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f5323q;

    /* renamed from: r, reason: collision with root package name */
    public final long f5324r = -1;

    public WakeLockEvent(int i5, long j3, int i6, String str, int i7, List list, String str2, long j5, int i8, String str3, String str4, float f, long j6, String str5, boolean z4) {
        this.f5311c = i5;
        this.f5312d = j3;
        this.f5313e = i6;
        this.f = str;
        this.f5314g = str3;
        this.f5315h = str5;
        this.f5316i = i7;
        this.f5317j = list;
        this.f5318k = str2;
        this.f5319l = j5;
        this.f5320m = i8;
        this.n = str4;
        this.f5321o = f;
        this.f5322p = j6;
        this.f5323q = z4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5311c);
        x.w1(parcel, 2, 8);
        parcel.writeLong(this.f5312d);
        x.p1(parcel, 4, this.f);
        x.w1(parcel, 5, 4);
        parcel.writeInt(this.f5316i);
        x.q1(parcel, 6, this.f5317j);
        x.w1(parcel, 8, 8);
        parcel.writeLong(this.f5319l);
        x.p1(parcel, 10, this.f5314g);
        x.w1(parcel, 11, 4);
        parcel.writeInt(this.f5313e);
        x.p1(parcel, 12, this.f5318k);
        x.p1(parcel, 13, this.n);
        x.w1(parcel, 14, 4);
        parcel.writeInt(this.f5320m);
        x.w1(parcel, 15, 4);
        parcel.writeFloat(this.f5321o);
        x.w1(parcel, 16, 8);
        parcel.writeLong(this.f5322p);
        x.p1(parcel, 17, this.f5315h);
        x.w1(parcel, 18, 4);
        parcel.writeInt(this.f5323q ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
