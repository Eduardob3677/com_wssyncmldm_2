package androidx.picker.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: androidx.picker.widget.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0170l extends View.BaseSavedState {
    public static final Parcelable.Creator<C0170l> CREATOR = new E0.a(15);

    /* renamed from: c, reason: collision with root package name */
    public final int f4524c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4525d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4526e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final long f4527g;

    public C0170l(Parcelable parcelable, int i5, int i6, int i7, long j3, long j5) {
        super(parcelable);
        this.f4524c = i5;
        this.f4525d = i6;
        this.f4526e = i7;
        this.f = j3;
        this.f4527g = j5;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4524c);
        parcel.writeInt(this.f4525d);
        parcel.writeInt(this.f4526e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.f4527g);
    }

    public C0170l(Parcel parcel) {
        super(parcel);
        this.f4524c = parcel.readInt();
        this.f4525d = parcel.readInt();
        this.f4526e = parcel.readInt();
        this.f = parcel.readLong();
        this.f4527g = parcel.readLong();
    }
}
