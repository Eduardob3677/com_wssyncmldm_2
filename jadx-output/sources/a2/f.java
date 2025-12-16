package a2;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class f extends AbstractC0387a {
    public static final Parcelable.Creator<f> CREATOR = new C0106b(1);

    /* renamed from: c, reason: collision with root package name */
    public final List f3049c;

    public f(ArrayList arrayList) {
        this.f3049c = arrayList == null ? new ArrayList() : arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.s1(parcel, 1, this.f3049c);
        x.v1(parcel, iT1);
    }
}
