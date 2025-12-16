package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class j implements Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new E0.a(9);

    /* renamed from: c, reason: collision with root package name */
    public final IntentSender f3200c;

    /* renamed from: d, reason: collision with root package name */
    public final Intent f3201d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3202e;
    public final int f;

    public j(IntentSender intentSender, Intent intent, int i5, int i6) {
        d3.i.e("intentSender", intentSender);
        this.f3200c = intentSender;
        this.f3201d = intent;
        this.f3202e = i5;
        this.f = i6;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        d3.i.e("dest", parcel);
        parcel.writeParcelable(this.f3200c, i5);
        parcel.writeParcelable(this.f3201d, i5);
        parcel.writeInt(this.f3202e);
        parcel.writeInt(this.f);
    }
}
