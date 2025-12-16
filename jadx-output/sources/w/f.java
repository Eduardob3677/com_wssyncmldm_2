package w;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* loaded from: classes.dex */
public final class f extends R.b {
    public static final Parcelable.Creator<f> CREATOR = new B1.f(12);

    /* renamed from: e, reason: collision with root package name */
    public SparseArray f9573e;

    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i5 = parcel.readInt();
        int[] iArr = new int[i5];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f9573e = new SparseArray(i5);
        for (int i6 = 0; i6 < i5; i6++) {
            this.f9573e.append(iArr[i6], parcelableArray[i6]);
        }
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        SparseArray sparseArray = this.f9573e;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i6 = 0; i6 < size; i6++) {
            iArr[i6] = this.f9573e.keyAt(i6);
            parcelableArr[i6] = (Parcelable) this.f9573e.valueAt(i6);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i5);
    }
}
