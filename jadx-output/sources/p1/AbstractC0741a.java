package p1;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: p1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0741a {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f8576a = 0;

    static {
        AbstractC0741a.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
