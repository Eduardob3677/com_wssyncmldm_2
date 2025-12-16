package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import java.util.Collections;
import java.util.HashSet;

/* renamed from: androidx.preference.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0189i extends C0193m {
    public static final Parcelable.Creator<C0189i> CREATOR = new E0.a(19);

    /* renamed from: c, reason: collision with root package name */
    public HashSet f4715c;

    public C0189i(Parcel parcel) {
        super(parcel);
        int i5 = parcel.readInt();
        this.f4715c = new HashSet();
        String[] strArr = new String[i5];
        parcel.readStringArray(strArr);
        Collections.addAll(this.f4715c, strArr);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4715c.size());
        HashSet hashSet = this.f4715c;
        parcel.writeStringArray((String[]) hashSet.toArray(new String[hashSet.size()]));
    }

    public C0189i(AbsSavedState absSavedState) {
        super(absSavedState);
    }
}
