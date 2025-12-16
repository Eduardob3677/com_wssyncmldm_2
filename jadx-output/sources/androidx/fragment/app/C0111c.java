package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0111c implements Parcelable {
    public static final Parcelable.Creator<C0111c> CREATOR = new E0.a(11);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3832c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3833d;

    public C0111c(Parcel parcel) {
        this.f3832c = parcel.createStringArrayList();
        this.f3833d = parcel.createTypedArrayList(C0110b.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeStringList(this.f3832c);
        parcel.writeTypedList(this.f3833d);
    }
}
