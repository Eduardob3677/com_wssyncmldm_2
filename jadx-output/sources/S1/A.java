package S1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class A extends R.b {
    public static final Parcelable.Creator<A> CREATOR = new B1.f(7);

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f2462e;
    public boolean f;

    public A(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2462e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f2462e) + "}";
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        TextUtils.writeToParcel(this.f2462e, parcel, i5);
        parcel.writeInt(this.f ? 1 : 0);
    }
}
